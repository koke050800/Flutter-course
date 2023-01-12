// ignore_for_file: prefer_const_constructors

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final player = AudioCache();

  void playNote(int noteNumber) {
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey(int noteNumber, MaterialStateProperty<Color> color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playNote(noteNumber);
        },
        style: ButtonStyle(
          backgroundColor: color,
        ),
        child: Text(' '),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),*/
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
              buildKey(1, MaterialStateProperty.all<Color>(Colors.red)),
              buildKey(2, MaterialStateProperty.all<Color>(Colors.orange)),
              buildKey(3, MaterialStateProperty.all<Color>(Colors.yellow)),
              buildKey(4, MaterialStateProperty.all<Color>(Colors.green)),
              buildKey(5, MaterialStateProperty.all<Color>(Colors.teal)),
              buildKey(6, MaterialStateProperty.all<Color>(Colors.blue)),
              buildKey(7, MaterialStateProperty.all<Color>(Colors.purple)),

            /*Expanded(
              child: TextButton(
                onPressed: () {
                  playNote(1);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
                child: Text(' '),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playNote(2);
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.orange),
                ),
                child: Text(' '),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playNote(3);
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.yellow),
                ),
                child: Text(' '),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playNote(4);
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green),
                ),
                child: Text(' '),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playNote(5);
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.teal),
                ),
                child: Text(' '),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playNote(6);
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                ),
                child: Text(' '),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  playNote(7);
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.purple),
                ),
                child: Text(' '),
              ),
            ),*/
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
