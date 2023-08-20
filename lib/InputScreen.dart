import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  int? firstNumber;
  int? secondNumber;
  int result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: "Enter first number",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  firstNumber = int.parse(value);
                });
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter second number",
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  secondNumber = int.parse(value);
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Result = $result',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  )),
            ),
            TextButton(
                onPressed: () {
                  setState(() {
                    result = firstNumber! + secondNumber! as int;
                  });
                },
                child: Text("Add")),
            ElevatedButton(onPressed: () {}, child: Text("Subtract")),
            OutlinedButton(onPressed: () {}, child: Text("Divide")),
            ElevatedButton(onPressed: () {}, child: Text("Multiply")),
          ],
        ),
      ),
    );
  }
}

void add() {}
