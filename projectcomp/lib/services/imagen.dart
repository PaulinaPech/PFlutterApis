import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class StableDifution extends StatefulWidget {
  const StableDifution({super.key});

  @override
  State<StableDifution> createState() => _StableDifutionState();
}

class _StableDifutionState extends State<StableDifution> {
  final ImagenController _imagenController = Get.put(ImagenController());
  final TextEditingController _imageTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('api imagen'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 17, 173, 66),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: TextField(
                    controller: _imageTextController,
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        hintText: 'jejeje api',
                        contentPadding: EdgeInsets.symmetric(horizontal: 10.0)),
                  ),
                )),
                const SizedBox(
                  width: 15.0,
                ),
                Obx(() {
                  return _imagenController.isLoading.value
                      ? const Center(
                          child: CircularProgressIndicator(),
                        )
                      : ElevatedButton(
                          style: ElevatedButton.styleFrom(elevation: 0),
                          onPressed: () async {
                            await _imagenController.getImage(
                              imageText: _imageTextController.text.trim(),
                            );
                          },
                          child: const Text("crear"));
                })
              ],
            ),
            const SizedBox(height: 30.0),
            Obx(() {
              return _imagenController.isLoading.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: _imagenController.data.value.isNotEmpty
                                  ? NetworkImage(_imagenController.data.value)
                                  : NetworkImage(
                                      'https://cdn.pixabay.com/photo/2016/04/04/14/12/monitor-1307227_960_720.jpg'))),
                    );
            })
          ],
        ),
      ),
    );
  }
}

class ImagenController extends GetxController {
  var url = Uri.parse('https://api.openai.com/v1/images/generations');
  // ignore: non_constant_identifier_names
  var api_token = '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';
  final data = ''.obs;
  final isLoading = false.obs;

  Future getImage({required String imageText}) async {
    try {
      isLoading.value = true;
      var request = await http.post(
        url,
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $api_token',
        },
        body: jsonEncode(
          {
            'prompt': imageText,
            'n': 1,
          },
        ),
      );
      if (request.statusCode < 500) {
        isLoading.value = false;
        data.value = jsonDecode(request.body)['data'][0]['url'];
        print(data.value);
      } else {
        isLoading.value = false;
        print(jsonDecode(request.body));
      }
    } catch (e) {
      isLoading.value = false;
      print(e.toString());
    }
  }
}