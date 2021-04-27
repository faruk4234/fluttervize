import 'package:flutter/material.dart';

class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('sd'),
        )),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          child: Center(
            child: TextField(
        obscureText: true,
        decoration: InputDecoration(
         border: OutlineInputBorder(),
        labelText: 'Name',
        ),
),
          ),
        ),
      ),
    );
  }
}