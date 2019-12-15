import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(Color color, int soundNumber) {
    return Expanded(
        child: FlatButton(
      color: color,
      onPressed: () {
        playSound(soundNumber);
      },
    ));
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(Colors.lime,1),
                buildKey(Colors.red,2),
                buildKey(Colors.green,3),
                buildKey(Colors.blue,4),
                buildKey(Colors.orange,5),
                buildKey(Colors.yellow,6),
                buildKey(Colors.teal,7),
              ]),
        ),
      ),
    );
  }
}
