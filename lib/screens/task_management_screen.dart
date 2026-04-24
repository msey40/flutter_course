import 'package:flutter/material.dart';
import 'package:flutter_course/provider/task_manager.dart';
import 'package:provider/provider.dart';

class TaskManagementScreen extends StatefulWidget {
  const TaskManagementScreen({super.key});

  @override
  State<TaskManagementScreen> createState() => _TaskManagementScreenState();
}

class _TaskManagementScreenState extends State<TaskManagementScreen> {
  final TextEditingController _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose(); // សំខាន់
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final taskManager = Provider.of<TaskManager>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Todo List'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: taskManager.tasks.length,
              itemBuilder: (context, index) {
                final task = taskManager.tasks[index];

                return ListTile(
                  title: Text(
                    task.title,
                    style: TextStyle(
                      decoration: task.isDone
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        onPressed: () {
                          taskManager.toggleTaskDone(task);
                        },
                        icon: Icon(
                          task.isDone
                              ? Icons.check_circle
                              : Icons.check_circle_outline,
                          color:
                              task.isDone ? Colors.green : Colors.grey,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          taskManager.removeTask(task);
                        },
                        icon: const Icon(Icons.delete, color: Colors.red),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          /// INPUT
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    onSubmitted: (value) {
                      if (value.isNotEmpty) {
                        taskManager.addTask(value);
                        _controller.clear();
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'Add Task',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                SizedBox(
                  height: 56,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_controller.text.isNotEmpty) {
                        taskManager.addTask(_controller.text);
                        _controller.clear();
                      }
                    },
                    child: const Text("Add"),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}