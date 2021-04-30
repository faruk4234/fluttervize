import 'package:flutter/material.dart';
import 'Donemort.dart';

class Dersler extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    var datas=[];
    var ort=[];
    int toplamOrt=0;
    int kredi =0;
    var kredis=[];
    var harfnotu=[];
  List<Widget> textWidgetList = List<Widget>(); // Here we defined a list of widget!
    datas=ModalRoute.of(context).settings.arguments;

    for (int i = 0; i < datas.length; i++) {
        

         ort.add((int.parse(datas[i][2])*0.4)+(int.parse(datas[i][3])*0.6));
         kredi=kredi+int.parse(datas[i][1]);
         kredis.add(int.parse(datas[i][1]));
        textWidgetList.add(
        Padding(
          padding: const EdgeInsets.only(top: 80,left:10),
          child: Container(
            child:
         Container(child: Text(datas[i][0].toString()+'  ortalama :'+ort[i].toString()+' Ders kredisi '+ datas[i][1].toString() )),
         ),
        ));
             
    }

  var data =[];
  data.add(ort);
  data.add(kredi);
  data.add(kredis);
    textWidgetList.add(
      
      RaisedButton(
            onPressed: () => {
               Navigator.pushReplacement(
            context,
            MaterialPageRoute(
            builder: (context) => Donemort(),
            settings: RouteSettings(
            arguments:data
            ),
            ))
            },
            child: new Text('Dönem Ortalamanızı hesaplayın'),
            textColor: Colors.green,
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