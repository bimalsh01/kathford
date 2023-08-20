import 'package:flutter/material.dart';

class ColumnScreen extends StatefulWidget {
  const ColumnScreen({super.key});

  @override
  State<ColumnScreen> createState() => _ColumnScreenState();
}

class _ColumnScreenState extends State<ColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows and Column'),
      ),
      body: Column(
        children: [
          Text("Microsoft Logo",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              )),
          Row(
            children: [
              Container(
                color: Colors.red,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.green,
                height: 100,
                width: 100,
              ),
            ],
          ),
          Row(
            children: [
              Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
              Container(
                color: Colors.orange,
                height: 100,
                width: 100,
              ),
            ],
          )
        ],
      ),
    );
  }
}
