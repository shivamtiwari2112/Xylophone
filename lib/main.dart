import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber){
    final player =AudioCache();
    player.play('note$soundNumber.wav');
  }
  Expanded buildkey({Color color,int number}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(number);
        },
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
              buildkey(color: Colors.red, number: 1),
              buildkey(color: Colors.orange, number: 2),
              buildkey(color: Colors.yellow, number: 3),
              buildkey(color: Colors.green, number: 4),
              buildkey(color: Colors.teal, number: 5),
              buildkey(color: Colors.blue, number: 6),
              buildkey(color: Colors.purple, number: 7),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
