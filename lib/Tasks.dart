import 'package:flutter/material.dart';
import './main.dart';
class Tasks extends StatelessWidget{
  String s = "";
  int exp = 0;
  Tasks(this.s,this.exp);
  @override
  Widget build(BuildContext context) {
    return ListTile(title: Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: Text(s,textAlign: TextAlign.center,
          style: TextStyle(color: Colors.blueAccent,fontSize: 20,)),
    ),
      onTap: null,
    );
  }
}