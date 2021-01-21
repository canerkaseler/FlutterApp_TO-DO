import 'package:flutter/material.dart';


class TaskTitle extends StatefulWidget {

  @override
  _TaskTitleState createState() => _TaskTitleState();
}

class _TaskTitleState extends State<TaskTitle> {

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("This is a task", style: TextStyle(
        decoration: isChecked ? TextDecoration.lineThrough : null
      ),),
      trailing: TaskCheckbox(
        isChecked: isChecked,
        checkboxState: (bool newValue){
          setState(() {
            isChecked = newValue;
          });
        }
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {

  final bool isChecked;
  final Function checkboxState;

  TaskCheckbox({this.isChecked, this.checkboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: Colors.lightBlueAccent,
      value: isChecked,
      onChanged: checkboxState,
    );
  }
}