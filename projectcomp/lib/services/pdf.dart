import 'package:flutter/material.dart';
import 'package:projectcomp/services/reader.dart';
import 'home.dart';
import 'model.dart';

class pdf extends StatelessWidget {
  const pdf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: const Text("PDF"),
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 18.0, horizontal: 16.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Documentos de Estadisticas",
                  style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: Document.doc_list
                      .map((doc) => ListTile(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Reader(doc)));
                            },
                            title: Text(
                              doc.doc_title!,
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle: Text("${doc.page_num!} Paginass"),
                            trailing: Text(doc.doc_date!),
                            leading: const Icon(
                              Icons.picture_as_pdf,
                              color: Colors.green,
                              size: 28.0,
                            ),
                          ))
                      .toList(),
                )
              ],
            ),
          )),
    );
  }
}

