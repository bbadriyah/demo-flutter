import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    title: "Kalimasada Sport",
    home: new Halamansatu(),
    ));
}
//sebuah appbar home dan search//
class Halamansatu extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: new AppBar(
        backgroundColor: Colors.blue[200],
        leading: new Icon(Icons.home),
        title: new Center(child: new Text( "Kalimasada"),),
        actions: <Widget>[
          new Icon(Icons.search)
        ],
      ),
      //Bagian icon Row/Column//
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Icon(Icons.local_pizza,
            size: 70.0,
            color: Colors.red,
            ),
            new Icon(Icons.donut_large,size: 70.0,color: Colors.red,),
            new Icon(Icons.cake,size: 70.0,color: Colors.red,)
          ],
          )
      ),
    );
  }
}