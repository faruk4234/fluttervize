import 'package:flutter/material.dart';


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

  toplam=toplam/double.parse(datas[1].toString());

    return Container(
    color:Colors.green,
     padding: EdgeInsets.all((20.0)),
      child: Container(color:Colors.brown,
      child: Center(
        child: Text(
         toplam.toString(),
          textDirection:TextDirection.ltr,
          ),
      ),
        )
      );
  }

} 