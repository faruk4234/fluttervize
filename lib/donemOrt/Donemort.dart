import 'package:first/donemOrt/Notlar%C4%B1Listele.dart';
import 'package:first/homeroute.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class Donemort extends StatelessWidget {


  @override 
  Widget build(BuildContext context) {
    var datas =[];
    var notes=[];
     double toplam=0;
  datas=ModalRoute.of(context).settings.arguments;  
  notes=datas[0];

  List<Widget> textWidgetList = List<Widget>(); // Here we defined a list of widget!

  for(int i=0;i<notes.length;i++)
  {
      toplam=toplam+double.parse(notes[i].toString()) ;
  };

  toplam=toplam/notes.length;


  FirebaseFirestore.instance.collection('users').add({new DateTime.now().millisecondsSinceEpoch.toString():toplam}).then((value) => print(value));

    return Column(
      children: <Widget> [
         Text(
        "ortlaman="+ toplam.toString(),
          textDirection:TextDirection.ltr,
          ),  

          RaisedButton(
            child:  const Text('Daha önceki notlarımı listele'),
            color: Colors.green,
            elevation:4.0,
            onPressed: (){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
            builder: (context) => NotlarListele(),
            settings: RouteSettings(
            ),
            ));
            },
            ),
            
            RaisedButton(
            child:  const Text('Tekrar hesapla'),
            color: Colors.green,
            elevation:4.0,
            onPressed: (){
               Navigator.pushReplacement(
            context,
            MaterialPageRoute(
            builder: (context) => HomeRoute(),
            settings: RouteSettings(
            ),
            ));
            },
            )
      ]
      );
  }

} 