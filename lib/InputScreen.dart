import 'package:flutter/material.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  double? firstNumber;
  double? secondNumber;
  double result = 0.00;

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
                  firstNumber = double.parse(value);
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
                  secondNumber = double.parse(value);
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
                    result = firstNumber! + secondNumber!;
                  });
                },
                child: Text("Add")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = firstNumber! - secondNumber!;
                  });
                },
                child: Text("Subtract")),
            OutlinedButton(
                onPressed: () {
                  setState(() {
                    result = firstNumber! / secondNumber!;
                  });
                },
                child: Text("Divide")),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = firstNumber! * secondNumber!;
                  });
                },
                child: Text("Multiply")),
          ],
        ),
      ),
    );
  }
}

void add() {}
