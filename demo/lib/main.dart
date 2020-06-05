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

List<Container> daftarkoleksi = new List();

var dkoleksi=[
  {"nama":"Model 1", "gambar":"k1.JPG"},
  {"nama":"Model 2", "gambar":"k2.JPG"},
  {"nama":"Model 3", "gambar":"k3.JPG"},
  {"nama":"Model 4", "gambar":"k4.JPG"},
];

_buatlist()async {
  for (var i = 0; i < dkoleksi.length; i++) {
    final koleksinya = dkoleksi[i];
    final String gambar = koleksinya["gambar"];

    daftarkoleksi.add(
      new Container(
        child: new Card(
          child:
          new Column(
            children: <Widget>[

              new Hero(
                tag: koleksinya['nama'],
                child: new Material(
                  child: new InkWell(
                    onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context)=> new Detail(nama: koleksinya['nama'], gambar: gambar),
                    )),
                    child: new Image.asset("img/$gambar", fit: BoxFit.cover,),
                  ),
                ),
              ),

              
              new Padding(padding: new EdgeInsets.all(10.0),),
              new Text(koleksinya['nama'], style: new TextStyle(fontSize: 18.0),)
            ],
          )
        )
      )
    );
  }
}


@override
void initState() {
    _controller = new TabController(vsync: this, length: 3);
    _buatlist();
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
          new GridView.count(
        crossAxisCount: 2, childAspectRatio: 0.8,
      children: daftarkoleksi,
      ),
          new kustom.Custom(),
          new note.Note(),
        
        ],
        
      ),
      
      
    );
  }
}


class Detail extends StatelessWidget {
  Detail({this.nama,this.gambar});
  final String nama;
  final String gambar;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 250.0,
            child:
            new Hero(
              tag: nama,
              child: new Material(
                child: new InkWell(
                  child: new Image.asset("img/$gambar", fit: BoxFit.contain,),
                )
              ),
            )

          )
        ],
      ),
    );
  }
}