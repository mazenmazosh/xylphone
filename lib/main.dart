import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  Expanded noteinter (int a , Color color){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          final player = AudioCache();
          player.play('note$a.wav');
        },
        child: Container(),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
            children: <Widget>[
              noteinter(1,Colors.red),
              noteinter(2,Colors.orange),
              noteinter(3,Colors.yellow),
              noteinter(4,Colors.green),
              noteinter(5,Colors.teal),
              noteinter(6,Colors.blue),
              noteinter(7,Colors.deepPurple),
            ],
          ),
          ),
        ),
      ),
    );
  }
}
