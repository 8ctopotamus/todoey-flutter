import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/models/Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(name: 'Test1'),
    Task(name: 'Test2'),
    Task(name: 'Test3'),
  ];

}