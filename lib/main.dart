import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/tasks_screen.dart';
import 'package:todo_list/models/task_data_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<TaskData>(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}

/*

child: MaterialApp(
        home: TasksScreen(),
      ),
 */
