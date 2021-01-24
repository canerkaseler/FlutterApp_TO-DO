import 'package:flutter/material.dart';
import 'package:todo_list/models/task.dart';
import 'package:todo_list/widgets/task_tile.dart';

class TasksList extends StatefulWidget {

  final List<Task> tasks;

  TasksList({this.tasks});

  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index){
        return TaskTitle(
          title: widget.tasks[index].name,
          isChecked: widget.tasks[index].isDone,
          callback: (bool checkState){
            setState(() {
              widget.tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: widget.tasks.length,
    );
  }
}