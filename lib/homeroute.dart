import 'package:first/third.dart';
import 'package:flutter/material.dart';
import 'package:first/main.dart';

class HomeRoute extends StatelessWidget {
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
            child: Text('Gos'),
            onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>ThirdRoute(name:name.text)));
            },
          ),
        ],
      )),
    );
  }
}