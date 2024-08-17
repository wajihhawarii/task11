import 'package:flutter/material.dart';
import 'package:task11/routes.dart';
import 'package:task11/screens/startpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const StartPage(), //StartPage(), // object From Another File
      routes:
          routes, // AppRoute List ,which  Responsible for transitions between screens
    );
  }
}
