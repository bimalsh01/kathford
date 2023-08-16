import 'package:flutter/material.dart';
import 'package:test/ColumnScreen.dart';
import 'package:test/LoadImageScreen.dart';
import 'package:test/TestScreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/column',
    routes: {
      '/test': (context) => TestScreen(),
      '/loadImage': (context) => LoadImageScreen(),
      '/column':(context) => ColumnScreen(),
    },
  ));
}
