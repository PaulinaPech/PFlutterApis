import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:projectcomp/services/notificationservices.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'boton.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        title: const Text(
          textAlign: TextAlign.center,
          'Aplicación utilizando API',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
        verticalDirection: VerticalDirection.down,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const notification(),
          const SizedBox(
            height: 20,
          ),
        ],),
      ),
    );
  }
}