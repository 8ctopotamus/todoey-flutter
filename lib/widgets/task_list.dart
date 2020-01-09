import 'package:flutter/material.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';
import 'package:todoey_flutter/models/Task.dart';

class TaskList extends StatefulWidget {
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  List<Task> tasks = [
    Task(
      name: 'Test',
    ),
    Task(
      name: 'Test',
    ),
    Task(
      name: 'Test',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        title: tasks[index].name,
        isChecked: tasks[index].isDone,
        checkboxCallback: (checkboxState) {
          setState(() {
            tasks[index].toggleDone();
          });
        },
      );
    }, itemCount: tasks.length,);
  }
}