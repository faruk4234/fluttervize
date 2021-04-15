import 'package:first/src/first.dart';
import 'package:flutter/material.dart';

class widgets extends StatefulWidget {
  @override  
  StatelessKonusu createState()=> StatelessKonusu();
}

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
          ),
      ),
        )
      );
  }

} 