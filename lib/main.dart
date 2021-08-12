import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: XyloPhone(),
    );
  }
}

class XyloPhone extends StatefulWidget {
  const XyloPhone({Key? key}) : super(key: key);

  @override
  _XyloPhoneState createState() => _XyloPhoneState();
}

class _XyloPhoneState extends State<XyloPhone> {

  // Play sound Function
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  // Expanded function
  Expanded mySound(int order, Color theColor) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero
          ),
          enableFeedback: false,
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          backgroundColor: theColor,
        ),
        onPressed: () {
          playSound(order);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              mySound(1, Colors.blue),
              mySound(2, Colors.red),
              mySound(3, Colors.green),
              mySound(4, Colors.teal),
              mySound(5, Colors.yellow),
              mySound(6, Colors.purple),
              mySound(7, Colors.pink),
            ],
          )),
    );
  }
}
