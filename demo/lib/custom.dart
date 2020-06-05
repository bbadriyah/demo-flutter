import 'dart:io';


import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';



class Custom extends StatefulWidget {
  @override
  _CustomState createState() => _CustomState();
}

class _CustomState extends State<Custom> {

File _image1,_image2,_image3;
File _pemain;

Future getImageGallery() async{
  var imageFile1 = await ImagePicker.pickImage(source: ImageSource.gallery);

  if (imageFile1 != null){
  setState(() {
    _image1 = imageFile1;
  });
  }
}

Future getImageGallery2() async{
  var imageFile2 = await ImagePicker.pickImage(source: ImageSource.gallery);

  if (imageFile2 != null){
  setState(() {
    _image2 = imageFile2;
  });
  }
}

Future getImageGallery3() async{
  var imageFile3 = await ImagePicker.pickImage(source: ImageSource.gallery);

  if (imageFile3 != null){
  setState(() {
    _image3 = imageFile3;
  });
  }
}


List<String> bahan=["Parasut","Plastik","Cotton Combet"];
String _bahan="Parasut";

String _jb="";
void _pilihkategori(String value){
  setState(() {
    _jb=value;
  });
}

void pilihbahan(String value){
  setState(() {
    _bahan=value;
  });
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      
      body: ListView(
        children: <Widget>[
          new Container(
            child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              _image1==null
                ? new Text("No Image Selected")
                : new Image.file(_image1),
              new Padding(padding: new EdgeInsets.all(10.0),),
              RaisedButton(
                child: Text("Upload Desain Jersey"),
                onPressed: getImageGallery,
                ),

              _image2==null
                ? new Text("No Image Selected")
                : new Image.file(_image2),
              new Padding(padding: new EdgeInsets.all(10.0),),
              RaisedButton(
                child: Text("Upload Desain Logo"),
                onPressed: getImageGallery2,
                ),

              _image3==null
                ? new Text("No Image Selected")
                : new Image.file(_image3),
              new Padding(padding: new EdgeInsets.all(10.0),),
              RaisedButton(
                child: Text("Upload Desain Support"),
                onPressed: getImageGallery3,
                ),

              new Padding(padding: new EdgeInsets.only(top: 10.0),),
              new TextField(
                decoration: new InputDecoration(
                  hintText: "Nama Team",
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0)
                  )
                ),
                ),

              new Padding(padding: new EdgeInsets.all(10.0),),
              new TextField(
                decoration: new InputDecoration(
                  hintText: "Nama Font",
                  border: new OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0)
                  )
                ),
                ),

              new Padding(padding: new EdgeInsets.all(10.0),),
              new Text("Kategori"),
              new RadioListTile(
                value: "Diamond",
                title: new Text("Diamond"),
                groupValue: _jb,
                onChanged: (String value){
                  _pilihkategori(value);
                }
              ),

              new RadioListTile(
                value: "Gold",
                title: new Text("Gold"),
                groupValue: _jb,
                onChanged: (String value){
                  _pilihkategori(value);
                }
              ),
              new RadioListTile(
                value: "Silver",
                title: new Text("Silver"),
                groupValue: _jb,
                onChanged: (String value){
                  _pilihkategori(value);
                }
              ),


              new Padding(padding: new EdgeInsets.all(10.0),),

              new Row(
                children: <Widget>[
                  new Text("Bahan  ", style: new TextStyle(fontSize: 16.0, color: Colors.blue),),
                
                new DropdownButton(
                onChanged: (String value){
                  pilihbahan(value);
                },
                value: _bahan,
                items: bahan.map((String value){
                  return new DropdownMenuItem(
                    value: value,
                    child: new Text(value),
                  );

                }).toList(),
              )

                ],
              )
              

            ],
          ),
          ),
        ],
      )
    );
  }
}
