// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () {
                final assetsAudioPlayer = AssetsAudioPlayer();
                assetsAudioPlayer.open(
                  Audio("assets/audio/note1.wav"),
                );
              },
              child: Text('Click Me'),
            ),
          ),
        ),
      ),
    );
  }
}
