import 'package:flutter/material.dart';
import 'package:flutter_course/testApi/screen/product_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Course', home: ProductScreen());
  }
}
