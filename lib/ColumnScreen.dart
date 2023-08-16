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
          Text('Text 1'),
          Text('Text 2'),
          Container(
            color: Colors.blue,
            height: 100,
            width: 100,
          ),
          Row(
            children: [
              Text('Row Text 1'),
              Text('Row Text 2'),
              Container(
                color: Colors.red,
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
