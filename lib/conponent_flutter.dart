import 'package:flutter/material.dart';

class ComponentFlutter extends StatefulWidget {
  const ComponentFlutter({super.key});

  @override
  State<ComponentFlutter> createState() => _ComponentFlutterState();
}

class _ComponentFlutterState extends State<ComponentFlutter> {
  bool isOn = false;
  bool isChecked = false;
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Component Flutter")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 🔹 Text
              const Text(
                "Hello Flutter",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              ),

              const SizedBox(height: 10),

              // 🔹 Icon
              const Icon(Icons.favorite, color: Colors.lightBlue),

              const SizedBox(height: 10),

              // 🔹 Image (make sure asset added in pubspec.yaml)
              Image.asset("images/cake1.jpg", width: 250, height: 200),

              const SizedBox(height: 15),

              // 🔹 Buttons
              ElevatedButton(
                onPressed: () {
                  debugPrint("Elevated Button pressed");
                },
                child: const Text("Press Me"),
              ),

              TextButton(
                onPressed: () {
                  debugPrint("Text Button pressed");
                },
                child: const Text("Text Button"),
              ),

              OutlinedButton(
                onPressed: () {
                  debugPrint("Outlined Button pressed");
                },
                child: const Text("Outlined Button"),
              ),

              const SizedBox(height: 10),

              const Divider(color: Colors.grey, thickness: 2),

              const SizedBox(height: 10),

              // 🔹 Name TextField
              TextField(
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: "Enter your name",
                  prefixIcon: const Icon(Icons.person, color: Colors.lightBlue),
                ),
              ),

              const SizedBox(height: 10),

              // 🔹 Password TextField
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: "Enter Password",
                  prefixIcon: const Icon(Icons.lock, color: Colors.lightBlue),
                ),
              ),

              const SizedBox(height: 15),

              // 🔹 Submit Button
              ElevatedButton(
                onPressed: () {
                  debugPrint("Submit pressed");
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 24, 147, 204),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 15,
                  ),
                ),
                child: const Text(
                  "Submit",
                  style: TextStyle(color: Colors.white),
                ),
              ),

              const SizedBox(height: 15),

              // 🔹 Card
              Card(
                elevation: 5,
                child: const ListTile(
                  leading: Icon(Icons.person, color: Colors.lightBlue),
                  title: Text(
                    "Junior Programmer",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text("Flutter Developer"),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.lightBlue,
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // 🔹 Switch
              Switch(
                value: isOn,
                onChanged: (bool value) {
                  setState(() {
                    isOn = value;
                  });
                },
              ),

              // 🔹 Checkbox
              Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value ?? false;
                  });
                },
              ),

              // 🔹 Slider
              Slider(
                value: sliderValue,
                min: 0,
                max: 100,
                label: sliderValue.toStringAsFixed(0),
                onChanged: (double newValue) {
                  setState(() {
                    sliderValue = newValue;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
