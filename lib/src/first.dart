import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  title: "flutter",
  home:StatelessKonusu(),
  debugShowCheckedModeBanner: false,
  ));

class StatelessKonusu extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Container(
    color:Colors.green,
     padding: EdgeInsets.all((20.0)),
      child: Container(color:Colors.brown,
      child: Center(
        child: Text(
          "Merhaba Dünya !!!",
          textDirection:TextDirection.ltr,
          style: TextStyle(fontSize: 30.0,color: Colors.greenAccent),
          ),
      ),
        )
      );
  }
  
}