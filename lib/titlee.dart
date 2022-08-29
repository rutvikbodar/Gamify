import 'package:flutter/material.dart';

class titlee extends StatelessWidget{
  String nam;
  titlee(this.nam);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment:AlignmentDirectional.center,
      child:

      Column(children: <Widget>[
        Text(
          nam,
          style: TextStyle(color: Colors.white,fontSize: 58,fontWeight: FontWeight.bold),
        ),



      ],)
    );
  }
}