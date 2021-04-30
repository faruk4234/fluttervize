import 'package:first/donemOrt/third.dart';
import 'package:flutter/material.dart';
import 'package:first/main.dart';

class HomeRoute extends StatelessWidget {

  var data =[];

  TextEditingController name = new TextEditingController();
  @override
  Widget build(BuildContext context) {

    var inputDecoration = InputDecoration(
                border: OutlineInputBorder(),
               labelText: 'Name',
                 );
        return Scaffold(
          appBar: AppBar(
            title: Text('What is your name ?'),
            backgroundColor: Colors.green,
          ),
          body: Center(
            
              child: Column(
              children: <Widget>[
    
            SizedBox(
           child: Container(
            color: Color.alphaBlend(Colors.white, Colors.red
            ),

            padding: EdgeInsets.only(left:20,bottom:0,right: 20,top: 100),
             child: TextField(
                controller: name,
              decoration: new InputDecoration(
                  hintText: "Adınızı Giriniz", labelText: "Adınız"),
    ),
           ),
        ),
          RaisedButton(
            child: Text('Start'),
            onPressed: () {
                data.add(name.text);
                data.add(0);
               Navigator.pushReplacement(
            context,
            MaterialPageRoute(
            builder: (context) => ThirdRoute(),
            settings: RouteSettings(
            arguments:data
            ),
            ));
            },
          ),
          
        ],
      )),
    );
  }
}