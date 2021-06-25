import 'dart:convert';

import 'package:first/homeroute.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


class NotlarListele extends StatelessWidget {


  @override 
  Widget build(BuildContext context) {
  List<Widget> textWidgetList = List<Widget>(); // Here we defined a list of widget!


     Future<void> getData() async {
    // Get docs from collection reference
 CollectionReference _collectionRef =FirebaseFirestore.instance.collection('users');
    QuerySnapshot querySnapshot = await _collectionRef.get();

    var allData = querySnapshot.docs.map((doc) => doc.data()).toList();

    for (var i = 0; i < allData.length; i++) {
      int x= allData[i].values.toList()[0];
      StreamBuilder(
        stream: _collectionRef.snapshots() ,
        builder: (BuildContext context,AsyncSnapshot asyncSnapshot){
        return Text(asyncSnapshot.data.data());
      },);
      
    }

      

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

         textWidgetList.add( RaisedButton(
            child:  const Text('Tekrar hesapla'),
            color: Colors.green,
            elevation:4.0,
            onPressed: (){
              
            )               },
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