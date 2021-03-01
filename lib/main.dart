import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int track) {
    final play = AudioCache();
    play.play('note$track.wav');
  }

  Expanded tonePlate(int trackNo, Color color) {
    return Expanded(
        child: FlatButton(
      onPressed: () {
        playSound(trackNo);
      },
      color: color,
      child: null,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              tonePlate(1, Colors.redAccent),
              tonePlate(2, Colors.lightGreen),
              tonePlate(3, Colors.pink),
              tonePlate(4, Colors.amber),
              tonePlate(5, Colors.deepOrangeAccent),
              tonePlate(6, Colors.purpleAccent),
              tonePlate(7, Colors.blueAccent),
            ],
          ),
        ),
      ),
    );
  }
}
