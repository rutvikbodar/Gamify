
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './inventory.dart';
import './titlee.dart';
import './addTask.dart';
import './Tasks.dart';
import './progress.dart';
import './DataBase.dart';

void main() => runApp(MaterialApp(
  theme: new ThemeData(scaffoldBackgroundColor: Colors.blueAccent),
  home: gamify(),
));

class gamify extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return gamifyState();
  }
}


class gamifyState extends State {
  static DateTime todaydate = DateTime.now();
  static DateTime targetDate = DateTime.parse("2026-12-31");


  int diff = targetDate
      .difference(todaydate)
      .inDays;
  @override
  void setState(VoidCallback fn) {

    super.setState(fn);
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(

            title: Stack(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                  child : Text("Time Left!",textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,fontSize: 25,),
                )
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(onPressed: () =>
                      Navigator.of(context).push(new MaterialPageRoute(builder:
                          (BuildContext context) => new titl()))
                      , icon: Icon(Icons.list)),
                )
              ],
            )

            ),
            body: Container(
              width: double.infinity,
              margin: EdgeInsets.all(30),
              child: Column(children: <Widget>[
                titlee((diff+1).toString()),
                Text("Days.......",style: TextStyle(color: Colors.white,fontSize: 13),)
              ],

              )




              ,)


        );
  }



}

