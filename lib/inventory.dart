
import 'package:flutter/material.dart';
import 'package:gamify/setting.dart';
import 'package:gamify/titlee.dart';
import './TodaysTasks.dart';
import './progress.dart';
class titl extends StatelessWidget{
   nextPages(){
    print("total miles view");
  }


  @override
  Widget build(BuildContext context) {
    List<Widget> lol = [
      ListTile(title: Container(
        width: double.infinity,
        alignment: Alignment.centerLeft,
        child: Text("Miles Walked",textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blueAccent,fontSize: 20,)),
      ),trailing: Icon(Icons.nordic_walking),
        onTap: null,
      ),
      ListTile(title: Container(
        width: double.infinity,
        alignment: Alignment.centerLeft,
        child: Text("Player Level",textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blueAccent,fontSize: 20,)),
      ),trailing: Icon(Icons.trending_up),
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder:
            (BuildContext context) => new progress())),
      ),
      ListTile(title: Container(
        width: double.infinity,
        alignment: Alignment.centerLeft,
        child: Text("Tasks",textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blueAccent,fontSize: 20,)),
      ),trailing: Icon(Icons.work_outline_outlined),
        onTap: () => Navigator.of(context).push(new MaterialPageRoute(builder:
            (BuildContext context) => new TodaysTask())),
      ),
      ListTile(title: Container(
        width: double.infinity,
        alignment: Alignment.centerLeft,
        child: Text(""
            "Library",textAlign: TextAlign.center,
            style: TextStyle(color: Colors.blueAccent,fontSize: 20,)),
      ),trailing: Icon(Icons.local_library),
      )
    ];
    return MaterialApp(
      home : Scaffold(

        appBar: AppBar(

            title: Stack(
              children: <Widget>[
                Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    margin: EdgeInsets.all(10),
                    child : Text("Inventory",textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,fontSize: 25,),
                    )
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(onPressed: () => Navigator.of(context).push(new MaterialPageRoute(builder:
                      (BuildContext context) => new setting()))
                      , icon: Icon(Icons.settings),
                  ),
                )
              ],
            )

        ),
      body: ListView(children: ListTile.divideTiles(
        context: context,
          tiles: lol).toList()
      )

      ,)



      );
  }
}