import 'package:flutter/material.dart';

void main(){
  runApp(new MaterialApp(
    home: new Halsatu(),
    title: "Navigasi",
    routes: <String, WidgetBuilder>{
      '/Halsatu' : (BuildContext context) => new Halsatu(),
      '/Haldua' : (BuildContext context) => new Haldua(),
    },
  ));
}

class Halsatu extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Music"),),

      body: new Center(
        child: new IconButton(icon: new Icon(Icons.headset, size: 50.0,),
        onPressed: (){
          Navigator.pushNamed(context, '/Haldua');
        },
        )
      ),
    );
  }
}

//ini Halaman dua
class Haldua extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Speaker"),),

      body: new Center(
        child: new IconButton(icon: new Icon(Icons.speaker, size: 50.0, color: Colors.red,),
        onPressed: (){
          Navigator.pushNamed(context, '/Halsatu');
        },
        )
      ),
    );
  }
}