
import 'package:flutter/material.dart';
import 'package:flutter_course/model/model_counter.dart';

class Counterscreen extends StatefulWidget {
  const Counterscreen({super.key});

  @override
  State<Counterscreen> createState() => _CounterscreenState();
}

class _CounterscreenState extends State<Counterscreen> {
  final ModelCounter _modelCounter = ModelCounter();

   @override
   void initState() {
    super.initState();
    _modelCounter.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _modelCounter.removeListener(() {});
    _modelCounter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Text(
          '${_modelCounter.counter}',
          style: const TextStyle(fontSize: 48),
        ),
      ),
      floatingActionButton: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FloatingActionButton(
            onPressed: _modelCounter.increment,
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: _modelCounter.decrement,
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}