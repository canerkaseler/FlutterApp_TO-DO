import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todo_list/models/task_model.dart';

class TaskData extends ChangeNotifier {

  List<Task> _tasks = [
    Task(name: "Dependency Injection"),
    Task(name: "Kotlin & Coroutines"),
    Task(name: "Java Data & Algorithm"),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get getTaskCount {
    return _tasks.length;
  }

  void addTask(String newTaskName){
    final task = Task(name: newTaskName);
    _tasks.add(task);
    notifyListeners();
  }

  void updateTask(Task task){
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}