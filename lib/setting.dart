import 'package:flutter/material.dart';
import 'DataBase.dart';
import './main.dart';
    class setting extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Stack(
              children: <Widget>[
          Container(
          width: double.infinity,
              alignment: Alignment.center,
              margin: EdgeInsets.all(10),
              child : Text("Settings",textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white,fontSize: 25,),
              )
          ),
        ])
        ),
      ),
    );
  }
    }