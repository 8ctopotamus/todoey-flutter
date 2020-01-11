import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/Task.dart';
import 'dart:collection';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'Test1'),
    Task(name: 'Test2'),
    Task(name: 'Test7'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addTask(String newTaskTitle) {
    final newTask = Task(name: 'etestsaf'); // TODO: this is hard-coded, fix keyboard null value bug
    _tasks.add(newTask);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}