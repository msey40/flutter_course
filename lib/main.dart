import 'package:flutter/material.dart';
import 'package:flutter_course/product_screen.dart';
// import 'package:flutter_course/product_view.dart';
// import 'thirdparty.dart'; // <-- import your file here

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
