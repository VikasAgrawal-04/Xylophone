import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {


  void playSound(int file){
    final player = AudioPlayer();
    player.play(AssetSource('note$file.wav'));
  }


  Expanded buildKey({required Color color, required int file}){
    return Expanded(
      child: TextButton(
        child: Text("$color"),
        style: TextButton.styleFrom(
            primary: color,
            backgroundColor: color
        ),
        onPressed: () {
          playSound(file);
        },
      ),
    );
  }
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red,file: 1),
              buildKey(color: Colors.orange,file: 2),
              buildKey(color: Colors.yellow, file: 3),
              buildKey(color: Colors.green, file: 4),
              buildKey(color: Colors.teal, file: 5),
              buildKey(color: Colors.blue, file: 6),
              buildKey(color: Colors.purple, file: 7),
            ],
          ),
        ),
      ),
    );
  }
}
