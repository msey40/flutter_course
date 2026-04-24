import 'package:flutter/material.dart';
import '../model/task.dart';

class TaskManager extends ChangeNotifier {
  final List<Task> _tasks = [];
  List<Task> get tasks => _tasks;

  void addTask(String title) {
    _tasks.add(Task(title: title));
    notifyListeners();
  }
  void removeTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }

  void toggleTaskDone(Task task) {
    task.toggleDone();
    notifyListeners();
  }
}