import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: new Halamansatu(),
    ));
}

class Halamansatu extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      body: new Container(
        color: Colors.blue[100],
        child: new Center(
          child: 
          //new Text("Kalimasada"),// ini text
          new Icon(Icons.android),
          )
      ),
    );
  }
}