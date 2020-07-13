import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

void soundNumber(int soundNo) {
  final player = AudioCache();
  player.play('note$soundNo.wav');
}

Expanded buttonFun(int noteNumber, Color color) {
  return Expanded(
    child: FlatButton(
      child: Container(),
      color: color,
      onPressed: () {
        soundNumber(noteNumber);
      },
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buttonFun(1, Colors.red),
              buttonFun(2, Colors.orange),
              buttonFun(3, Colors.yellow),
              buttonFun(4, Colors.green),
              buttonFun(5, Colors.blue),
              buttonFun(6, Colors.indigo),
              buttonFun(7, Colors.purple)
            ],
          ),
        ),
      ),
    );
  }
}
