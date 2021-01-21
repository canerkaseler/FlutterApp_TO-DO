import 'dart:ui';

import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0)
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Add Task", textAlign: TextAlign.center, style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30.0),),
              TextField(autofocus: true, textAlign: TextAlign.center,),
              SizedBox(height: 12.0,),
              FlatButton(
                color: Colors.lightBlueAccent,
                child: Text("Add", style: TextStyle(color: Colors.white, fontSize: 20.0),),
                onPressed: (){

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
