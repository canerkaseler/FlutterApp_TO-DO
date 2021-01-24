import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class Task extends ChangeNotifier{

  final String name;
  bool isDone;

  Task({this.name, this.isDone = false});

  void toggleDone(){
    isDone = !isDone;
  }
}