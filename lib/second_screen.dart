import 'package:flutter/material.dart';
import 'package:flutter_course/conponent_flutter.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text("Welcome to the Second Screen"),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ComponentFlutter()),
              );
            },
            child: const Text("Go to Component Flutter"),
          ),
          SizedBox(height: 10),
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.pop(context);
          //   },
          //   child: const Icon(Icons.arrow_back),
          // ),
        ],
      ),
    );
  }
}
