import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magic 8 ball',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.blue.shade900,
          secondary: Colors.blue.shade400,
          onPrimary: Colors.white,
          onBackground: Colors.white,
        ),
      ),
      home: const Ball(title: 'Pregunta algo'),
    );
  }
}

class Ball extends StatefulWidget {
  const Ball({super.key, required this.title});

  final String title;

  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {
  int _answerImage = Random().nextInt(5) + 1;

  void _randomAnswer() {
    setState(() {
      _answerImage = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: TextButton(
                  onPressed: () {
                    _randomAnswer();
                  },
                  child: Image.asset('images/ball$_answerImage.png'),
                ),
              ),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}