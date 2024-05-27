import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$soundNumber.wav'));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              Expanded(
                child: TextButton(
                  child: Text(''),
                  onPressed: () {playSound(1);},
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.red)
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Text(''),
                  onPressed: () {playSound(2);},
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.orange)
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Text(''),
                  onPressed: () {playSound(3);},
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.yellow)
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Text(''),
                  onPressed: () {playSound(4);},
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.greenAccent)
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Text(''),
                  onPressed: () {playSound(5);},
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Text(''),
                  onPressed: () {playSound(6);},
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.blue)
                  ),
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Text(''),
                  onPressed: () {playSound(7);},
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.purple)
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
