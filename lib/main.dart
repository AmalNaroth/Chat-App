import 'package:flutter/material.dart';
import 'package:materialchatapp/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Material Chat App",
      home: const HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
        brightness: Brightness.light
      ),
    );
  }
}

