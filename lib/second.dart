import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var datas =[];
  datas=ModalRoute.of(context).settings.arguments;
   String name=datas[0];
    int no=datas[1];
    String count =datas[2];
    return Scaffold(
      appBar: AppBar(
        title: Text('notlarını gir lütfen :)'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context,'/second');
          },
          child: Text('Back!'),
        ),
      ),
    );
  }
}