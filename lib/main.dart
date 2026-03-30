import 'package:flutter/material.dart';
import 'thirdparty.dart'; // <-- import your file here

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Course',
      home: Scaffold(
        body: const Thirdparty(
          title: 'My Carousel',
        ), // <-- use your widget here
      ),
    );
  }
}
