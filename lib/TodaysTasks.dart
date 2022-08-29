import 'package:flutter/material.dart';
import 'package:gamify/titlee.dart';
import './main.dart';
import './Tasks.dart';
import './addTask.dart';
class TodaysTask extends StatelessWidget{

  static List<addTask> totalTasks = [addTask("Completed 20 Pages of Current Book", 30),addTask("Wrote today's report", 10),
    addTask("4h of Productive work today", 50), addTask("6h of Productive work today", 90),addTask("8h productive work  today", 150),
    addTask("Did less than 4h of productive work", -30),addTask("Handled difficult situation", 100),
    addTask("Made new connection", 70),addTask("Hit the Gym", 40),addTask("Stayed Hygiene and Hydrated", 30),
    addTask("Did something u r Scared of", 40), addTask("Revised THAT book before 9 am", 40), addTask("Was Positive entire day", 20),
    addTask("Maintained Discipline",50),addTask("Found any solution or business Model", 70),addTask("Meditation ", 25),
    addTask("Completed 3 tasks in Advanced", 60),
  ];

  static List<ListTile> totaltiles = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:
        Container(
            width: double.infinity,
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            child : Text("Today's Tasks",textAlign: TextAlign.center,
              style: TextStyle(color: Colors.white,fontSize: 25,),
            )
        ),
        ),
        body: ListView(children: totalTasks,),
      ),
    );
  }
}