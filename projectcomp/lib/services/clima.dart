import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';


class clima extends StatefulWidget {
  const clima({super.key});

  @override
  State<clima> createState() => _climaState();
}

class _climaState extends State<clima> {
var temp;
  Future getWeather() async {
    final url = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=maxcanu&appid=05b371e0a2c7dbac872802cefcf1fd5f&units=metric");
    http.Response response = await http.get(url);
    var results = jsonDecode(response.body);
    setState(() {
      this.temp = results['main']['temp'];
    });
  }

  @override
  void initState() {
    super.initState();
    this.getWeather();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text(
            temp != null ? temp.toString() : "Buscando",
          ),
        ),
      ),
    );
  }
}