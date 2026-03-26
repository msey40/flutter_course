import 'package:flutter/material.dart';
// import 'package:flutter_course/conponent_flutter.dart';
import 'package:flutter_course/second_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter course', home: Homescreen());
  }
}

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My screen'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 56, 156, 237),
      ),
      body: SecondScreen(),
    );
  }
}
