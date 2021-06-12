import 'package:flutter/material.dart';
import 'homeroute.dart';
import 'donemOrt/third.dart';
import 'donemOrt/second.dart';
import 'Hakkında.dart';
import 'giriş/Login.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      '/login': (context) => Login(),
      '/Home': (context) => HomeRoute(),
      '/second': (context) => SecondRoute(),
      '/third': (context) => ThirdRoute(),
      '/hakkında': (context) => Hakinda(),
    },
  ));
}
  