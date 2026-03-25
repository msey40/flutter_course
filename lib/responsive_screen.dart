import 'package:flutter/material.dart';

class Responsivescreen extends StatelessWidget {
  const Responsivescreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenwidth = MediaQuery.of(context).size.width;
    double screenheight = MediaQuery.of(context).size.height;
    Orientation orientation = MediaQuery.of(context).orientation;
    print(screenwidth);
    print(screenheight);
    print(orientation);
    return Center(
      child: Container(
        width: 500,
        height: 500,
        color: Colors.blue,
        alignment: Alignment.center,
        child: Text(
          "screen width: ${screenwidth.toStringAsFixed(2)}\n"
          "screen height: ${screenheight.toStringAsFixed(2)}\n"
          "orientation: ${orientation == Orientation.portrait ? "portrait" : "landscape"}",
          style: const TextStyle(color: Colors.white, fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
