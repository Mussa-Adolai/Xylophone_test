// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(XylophoneApp());
}

int soundNumber = 0;

class XylophoneApp extends StatelessWidget {
  get child => null;
  //int s=soundNumber ;
  play(int sNumber) {
    final assetsAudioPlayer = AssetsAudioPlayer();
    assetsAudioPlayer.open(
      Audio("assets/audio/note$sNumber.wav"),
    );
  }

  Expanded buildKey({Color? btnColor, required int soundNumber}) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: btnColor,
        ),
        onPressed: () {
          play(soundNumber);
        },
        child: child,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(btnColor: Colors.red, soundNumber: 1),
              buildKey(btnColor: Colors.green, soundNumber: 2),
              buildKey(btnColor: Colors.grey, soundNumber: 3),
              buildKey(btnColor: Colors.blue, soundNumber: 4),
              buildKey(btnColor: Colors.orange, soundNumber: 5),
              buildKey(btnColor: Colors.teal, soundNumber: 6),
              buildKey(btnColor: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
