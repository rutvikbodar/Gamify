import 'package:flutter/material.dart';
import 'package:gamify/main.dart';
class addTask extends StatelessWidget{
  String s = "";
  int exp = 0;
  addTask(this.s,this.exp);

  gamifyState obj = new gamifyState();

  @override
  Widget build(BuildContext context) {
    return ListTile(title: Container(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: Text(s,textAlign: TextAlign.center,
          style: TextStyle(color: Colors.orange,fontSize: 16,fontWeight: FontWeight.bold)),
    ),trailing: Text(exp.toString(),style: TextStyle(color: Colors.green,fontSize: 20,fontWeight: FontWeight.bold)),
      onTap: (() {
        obj.initState();
      })
    );
  }
}