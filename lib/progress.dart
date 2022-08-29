import './DataBase.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import './main.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class progress extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    Stream<QuerySnapshot> getdata(BuildContext context) async* {
      final uid = "0LPhq6d0i58k2x9x4PUn";
      yield* FirebaseFirestore.instance.collection("brews").doc("0LPhq6d0i58k2x9x4PUn").collection("xp").snapshots();
    };
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: new AppBar(
            title: Stack(
              children: <Widget>[
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    margin: EdgeInsets.fromLTRB(30, 10, 70, 10),
                    child: Text("Progress", textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 25,),
                    )
                ),
              ],
            )
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Container(

                margin: EdgeInsets.fromLTRB(10, 40, 10, 10),
                child: new CircularPercentIndicator(
                  radius: 160.0,
                  animation: true,
                  animationDuration: 1200,
                  lineWidth: 15.0,
                  percent: 0.865,
                  center: new Text(
                    "hi",
                    style:
                    new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
                  ),
                  circularStrokeCap: CircularStrokeCap.butt,
                  backgroundColor: Colors.orangeAccent,
                  progressColor: Colors.green,
                ),
              )

            ],
          ),
        )
    );

  }
}