import 'package:flutter/material.dart';

class LayoutResponsiveScreen extends StatelessWidget {
  const LayoutResponsiveScreen({super.key});
  int _getCrossAxisCount(double screenwidth) {
    if (screenwidth < 600) {
      return 2;
    } else if (screenwidth < 900) {
      return 3;
    } else {
      return 4;
    }
  }

  @override
  Widget build(BuildContext context) {
    final screensize = MediaQuery.of(context).size;
    return GridView.count(
      crossAxisCount: _getCrossAxisCount(screensize.width),
      children: List.generate(12, (index) {
        return Container(
          color: Colors.blue,
          margin: const EdgeInsets.all(8),
          alignment: Alignment.center,
          child: Text(
            "Item ${index + 1}",
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        );
      }),
    );
  }
}
