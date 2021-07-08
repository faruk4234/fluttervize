import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:first/giriş/Login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';


class Register extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new _State();
}

class _State extends State<Register> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('hesap oluştur'),
          backgroundColor: Colors.red,
        ),
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'kayıt ol',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 25),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
        
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.red,
                      child: Text('Login'),
                      onPressed: () async {
                        print(emailController.text);
                        print(passwordController.text);
                      try {
                       await FirebaseAuth.instance.createUserWithEmailAndPassword(
                        email:emailController.text,
                        password: passwordController.text
                      ).then((value) =>   Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                            builder: (context) => Login(),
                            settings: RouteSettings(
                            ),
                            )));
                    } on FirebaseAuthException catch (e) {
                      if (e.code == 'weak-password') {
                        print('The password provided is too weak.');
                      } else if (e.code == 'email-already-in-use') {
                        print('The account already exists for that email.');
                      }
                    } catch (e) {
                      print(e);
                    }
                      },
                    )),
                Container(
                    child: Row(
                      children: <Widget>[
                        Text('hesabın varmı ?'),
                         AnimatedButton(
                        height: 70,
                        width: 200,
                        text: 'giriş',
                        isReverse: true,
                        selectedTextColor: Colors.red,
                        transitionType: TransitionType.RIGHT_BOTTOM_ROUNDER,
                        selectedBackgroundColor:Colors.blue,
                        backgroundColor: Colors.red,
                        borderColor: Colors.blue,
                          borderWidth: 1,
                          onPress: () {
                            Timer.periodic(Duration(seconds: 1), (Timer t) {
                               Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                            builder: (context) => Login(),
                            settings: RouteSettings(
                            ),
                            )); 
                                t.cancel();
                              });    
                           
                            },
                        )
                      ],
                      mainAxisAlignment: MainAxisAlignment.center,
                    ))
              ],
            )));
  }
}