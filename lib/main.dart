import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Center(
            child: Text("Dice"),
          ),
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void dicePressed() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: dicePressed,
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: TextButton(
                onPressed: dicePressed,
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
