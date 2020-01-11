import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';
import 'package:todoey_flutter/widgets/task_tile.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List tasks = Provider.of<TaskData>(context).tasks;
    return ListView.builder(itemBuilder: (context, index) {
      return TaskTile(
        title: tasks[index].name,
        isChecked: tasks[index].isDone,
        checkboxCallback: (checkboxState) {
//          setState(() {
//           tasks[index].toggleDone();
//          });
        },
      );
    }, itemCount: tasks.length);
  }
}