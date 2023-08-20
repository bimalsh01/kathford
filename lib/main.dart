import 'package:flutter/material.dart';
import 'package:test/ColumnScreen.dart';
import 'package:test/InputScreen.dart';
import 'package:test/LoadImageScreen.dart';
import 'package:test/TestScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/input',
    routes: {
      '/test': (context) => TestScreen(),
      '/loadImage': (context) => LoadImageScreen(),
      '/column':(context) => ColumnScreen(),
      '/input':(context) => InputScreen(),
    },
  ));
}
