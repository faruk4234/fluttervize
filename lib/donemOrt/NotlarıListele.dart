import 'dart:convert';

import 'package:first/homeroute.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class NotlarListele extends StatelessWidget {


  @override 
  Widget build(BuildContext context) {
  List<Widget> textWidgetList = List<Widget>(); // Here we defined a list of widget!

  var array=[];

     Future<void> getData() async {
    // Get docs from collection reference
 CollectionReference _collectionRef =FirebaseFirestore.instance.collection('users');
    QuerySnapshot querySnapshot = await _collectionRef.get();

    // Get data from docs and convert map to List
    final allData = querySnapshot.docs.map((doc) => doc.data()).toList();

         for(int i =0; i<array.length-1;i++ ){
           array.add(allData[i].values.toList()[0]); 
      }
        }

      getData();
        

      textWidgetList.add(  Text(
        "Daha önceki notlarının listesi",
          textDirection:TextDirection.ltr,
          ));



      textWidgetList.add( RaisedButton(
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
            ));


     return Scaffold(
      body:  new Center(
        child: Column(
          children: textWidgetList,
          
        ),
      ),
    );
  }

} 