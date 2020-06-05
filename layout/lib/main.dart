import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    title: "Kalimasada Sport",
    home: new Halamansatu(),
    ));
}

class Halamansatu extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: new AppBar(
        backgroundColor: Colors.blue[200],
        leading: new Icon(Icons.home),
        title: new Center(child: new Text( "Kalimasada"),
        ),
        actions: <Widget>[
          new Icon(Icons.search)],
      ),
      );
  }
}