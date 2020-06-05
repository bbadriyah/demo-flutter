import 'package:flutter/material.dart';

import './collection.dart' as koleksi;
import './custom.dart' as kustom;
import './note.dart' as note;

void main(){
  runApp(new MaterialApp(
    title: "Tab Bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {

TabController _controller;

@override
void initState() {
    _controller = new TabController(vsync: this, length: 3);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("KalimasadaSport"),
         actions: <Widget>[
          new Icon(Icons.settings)
        ],
        bottom: new TabBar(
        controller: _controller,
        tabs: <Widget>[
          new Tab(icon: new Icon(Icons.collections),text: "Collection",),
          new Tab(icon: new Icon(Icons.create),text: "Custom",),
          new Tab(icon: new Icon(Icons.note),text: "Note",),
        ],
        ),
      ),

      body: new TabBarView(
        controller: _controller,
        children: <Widget>[
          new koleksi.Collection(),
          new kustom.Custom(),
          new note.Note()
        ],
      ),

    );
  }
}