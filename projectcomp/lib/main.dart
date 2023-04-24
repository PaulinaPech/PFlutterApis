import 'package:flutter/material.dart';
import 'package:projectcomp/services/home.dart';
import 'package:projectcomp/services/notificationservices.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initNotifications();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practica Pau',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const home(),
    );
  }
}
