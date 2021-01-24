import 'package:flutter/material.dart';
import 'package:todo_list/models/task_data_provider.dart';
import 'package:todo_list/widgets/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskDataUser, child) {
        return ListView.builder(itemBuilder: (context, index){
          final taskItem = taskDataUser.tasks[index];
            return TaskTitle(
              title: taskItem.name,
              isChecked: taskItem.isDone,
              callback: (bool checkState){
                taskDataUser.updateTask(taskItem);
              },
              longPressCallback: (){
                taskDataUser.deleteTask(taskItem);
              },
            );
          },
          itemCount: taskDataUser.getTaskCount,
        );
      },
    );
  }
}