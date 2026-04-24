import 'package:flutter/material.dart';
import 'package:flutter_course/provider/task_manager.dart';
// import 'package:flutter_course/testApi/screen/product_screen.dart';
// import 'package:flutter_course/screens/counterscreen.dart';
import 'package:flutter_course/screens/task_management_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => TaskManager(),
      child: MyApp(),
    ),
  );
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(title: 'Flutter Course', home: ProductScreen());
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Course',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: const TaskManagementScreen(),
    );
  }
}
