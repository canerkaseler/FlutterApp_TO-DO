import 'package:flutter/material.dart';


class TaskTitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(value: false, title: Text("Buy milk"),);
  }
}