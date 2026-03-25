import 'package:flutter/material.dart';

class ConponentFlutter extends StatelessWidget {
  const ConponentFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,

        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Hello Flutter",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
          ),
          SizedBox(height: 1),
          Icon(Icons.favorite, color: Colors.lightBlue),
          SizedBox(height: 1),
          Image.asset("images/cake1.jpg", width: 250, height: 200),
        ],
      ),
    );
  }
}
