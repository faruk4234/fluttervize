import 'package:flutter/material.dart';
  
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomeRoute(),
      '/second': (context) => SecondRoute(),
      '/third': (context) => ThirdRoute(),
    },
  ));
}
  
class HomeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var inputDecoration = InputDecoration(
                border: OutlineInputBorder(),
               labelText: 'Password',
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
             obscureText: true,
             decoration: inputDecoration,
    ),
           ),
        ),
          RaisedButton(
            child: Text('Click Me!'),
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
          ),
          RaisedButton(
            child: Text('Tap Me!'),
            onPressed: () {
              Navigator.pushNamed(context, '/third');
            },
          ),
        ],
      )),
    );
  }
}
  
class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Click Me Page"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pushNamed(context,'/third');
          },
          child: Text('Back!'),
        ),
      ),
    );
  }
}
  
class ThirdRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Tap Me Page"),
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