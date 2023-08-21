import 'package:flutter/material.dart';
import 'package:test/AddStudent.dart';
import 'package:test/ColumnScreen.dart';
import 'package:test/InputScreen.dart';
import 'package:test/LoadImageScreen.dart';
import 'package:test/TestScreen.dart';
import 'package:test/ViewStudents.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/addStudent',
    routes: {
      '/test': (context) => TestScreen(),
      '/loadImage': (context) => LoadImageScreen(),
      '/column': (context) => ColumnScreen(),
      '/input': (context) => InputScreen(),
      // add student
      '/addStudent': (context) => const AddStudent(),
      '/viewStudents': (context) => const ViewStudents(),
    },
  ));
}
