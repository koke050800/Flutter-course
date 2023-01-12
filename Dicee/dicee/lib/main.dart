// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const DicePage());
}

class DicePage extends StatelessWidget {
  const DicePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dicee',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.redAccent.shade700,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.redAccent.shade700,
          secondary: Colors.red.shade800,
          onPrimary: Colors.white,
          onBackground: Colors.white,
        ),
      ),
      home: const DicePageStateful(title: 'Dicee home page'),
    );
  }
}

class DicePageStateful extends StatefulWidget {
  const DicePageStateful({super.key, required this.title});

  final String title;

  @override
  State<DicePageStateful> createState() => _DicePageStatefulState();
}

class _DicePageStatefulState extends State<DicePageStateful> {
  int _leftDiceNumber = 1;
  int _rightDiceNumber = 1;

  /*void _incrementLeftDiceNumber() {
    setState(() {
      if (_leftDiceNumber < 6) {
        _leftDiceNumber++;
      } else {
        _leftDiceNumber = 1;
      }
    });
  }*/

  void _randomLeftDiceNumber() {
    setState(() {
      _leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  void _randomRightDiceNumber() {
    setState(() {
      _rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  void _randomDiceNumber() {
    _randomLeftDiceNumber();
    _randomRightDiceNumber();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: TextButton(
                  onPressed: () {
                    /*_incrementLeftDiceNumber();*/
                    //_randomLeftDiceNumber();
                    _randomDiceNumber();
                  },
                  child: Image.asset('images/dice$_leftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: TextButton(
                  onPressed: () {
                    /*_incrementLeftDiceNumber();*/
                    //_randomRightDiceNumber();
                    _randomDiceNumber();
                  },
                  child: Image.asset('images/dice$_rightDiceNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
