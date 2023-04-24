import 'package:flutter/material.dart';
import 'package:pay/pay.dart';
import 'package:projectcomp/services/clima.dart';
import 'package:projectcomp/services/pdf.dart';
import 'package:projectcomp/services/reader.dart';
import 'package:projectcomp/pay.dart';
import 'package:projectcomp/services/imagen.dart';
import 'home.dart';
import 'model.dart';
import 'notificationservices.dart';
import 'package:projectcomp/services/linear_charts.dart';
import 'package:projectcomp/chat/speetch_to_text.dart';
import 'package:projectcomp/services/scanner.dart';
import 'package:projectcomp/services/huella.dart';

// ignore: camel_case_types
class notification extends StatelessWidget {
  const notification({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      verticalDirection: VerticalDirection.down,
      children: [
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            elevation: 5,
            color: Colors.indigo.shade200,
            child: Column(
              children: [
                const ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  child: FadeInImage(
                      placeholder: AssetImage('assets/activo.png'),
                      image: AssetImage('assets/activo.png'),
                      height: 100,
                      width: 100),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ElevatedButton(
                      onPressed: () {
                        // Aquí debemos mostrar la notificación
                        showNotificacion();
                      },
                      child: const Text('Primera API')),
                ]),
              ],
            )),
        Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 5,
            color: Colors.indigo.shade200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  child: FadeInImage(
                      placeholder: AssetImage('assets/clima.png'),
                      image: AssetImage('assets/clima.png'),
                      height: 100,
                      width: 100),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          // Aquí debemos mostrar la notificación
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const clima()));
                        },
                        child: const Text('Segunda API')),
                  ],
                ),
              ],
            )),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 5,
          color: Colors.indigo.shade200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                child: FadeInImage(
                    placeholder: AssetImage('assets/google-pay.png'),
                    image: AssetImage('assets/google-pay.png'),
                    height: 100,
                    width: 100),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        // Aquí debemos mostrar la notificación
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => MyApp()));
                      },
                      child: const Text('Tercera API')),
                ],
              ),
            ],
          ),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 5,
          color: Colors.indigo.shade200,
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  child: FadeInImage(
                      placeholder: AssetImage('assets/buscar.png'),
                      image: AssetImage('assets/buscar.png'),
                      height: 100,
                      width: 100),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          // Aquí debemos mostrar la notificación
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StableDifution()));
                        },
                        child: const Text('Cuarta API')),
                  ],
                ),
              ]),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 5,
          color: Colors.indigo.shade200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const ClipRRect(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                child: FadeInImage(
                    placeholder: AssetImage('assets/grafico-de-barras.png'),
                    image: AssetImage('assets/grafico-de-barras.png'),
                    height: 100,
                    width: 100),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        // Aquí debemos mostrar la notificación
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LinearCharts()));
                      },
                      child: const Text('Quinta API')),
                ],
              ),
            ],
          ),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 5,
          color: Colors.indigo.shade200,
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  child: FadeInImage(
                      placeholder: AssetImage('assets/expediente.png'),
                      image: AssetImage('assets/expediente.png'),
                      height: 100,
                      width: 100),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          // Aquí debemos mostrar la notificación
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const pdf()));
                        },
                        child: const Text('Sexta API')),
                  ],
                ),
              ]),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 5,
          color: Colors.indigo.shade200,
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  child: FadeInImage(
                      placeholder: AssetImage('assets/grabacion-de-voz.png'),
                      image: AssetImage('assets/grabacion-de-voz.png'),
                      height: 100,
                      width: 100),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          // Aquí debemos mostrar la notificación
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SpeetchToText()));
                        },
                        child: const Text('Septima API')),
                  ],
                ),
              ]),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 5,
          color: Colors.indigo.shade200,
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  child: FadeInImage(
                      placeholder: AssetImage('assets/barcode-scanner.png'),
                      image: AssetImage('assets/barcode-scanner.png'),
                      height: 100,
                      width: 100),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          // Aquí debemos mostrar la notificación
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyHome()));
                        },
                        child: const Text('Octava API')),
                  ],
                ),
              ]),
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          elevation: 5,
          color: Colors.indigo.shade200,
          child: Column(mainAxisAlignment: MainAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const ClipRRect(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  child: FadeInImage(
                      placeholder: AssetImage('assets/fingerprint.png'),
                      image: AssetImage('assets/fingerprint.png'),
                      height: 100,
                      width: 100),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          // Aquí debemos mostrar la notificación
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Huella()));
                        },
                        child: const Text('Novena API')),
                  ],
                ),
              ]),
        )
      ],
    ));
  }
}
