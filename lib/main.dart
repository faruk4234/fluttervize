import 'package:flutter/material.dart';
import 'homeroute.dart';
import 'donemOrt/third.dart';
import 'donemOrt/second.dart';
import 'Hakkında.dart';
void main() {
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => HomeRoute(),
      '/second': (context) => SecondRoute(),
      '/third': (context) => ThirdRoute(),
      '/hakkında': (context) => Hakinda(),
    },
  ));
}
  