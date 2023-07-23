import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(Xylophone());

class Xylophone extends StatelessWidget {
  const Xylophone({super.key});

  @override
  Widget build(BuildContext context) {
    final player = AudioPlayer();
    Expanded buildButton(Color colorsito, var numSonido) {
      return Expanded(
        child: TextButton(
          onPressed: () async {
            //assetsAudioPlayer.open(
            //Audio("assets/audios/note1.wav"),
            //);
            await player.play(AssetSource('note$numSonido.wav'));
            print("Audio $numSonido debería sonar");
          },
          child: Text(''),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(colorsito),
          ),
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildButton(Colors.red, '1'),
              buildButton(Colors.orange, '2'),
              buildButton(Colors.yellow, '3'),
              buildButton(Colors.green, '4'),
              buildButton(Colors.teal, '5'),
              buildButton(Colors.blue, '6'),
              buildButton(Colors.purple, '7'),
            ],
          ),
        ),
      ),
    );
  }
}
