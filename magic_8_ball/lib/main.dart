import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Magic 8 Ball'),
            backgroundColor: Colors.blueAccent,
          ),
          body: Magic8Ball(),
        ),
      ),
    );

class Magic8Ball extends StatefulWidget {
  @override
  _Magic8BallState createState() => _Magic8BallState();
}

class _Magic8BallState extends State<Magic8Ball> {
  int counterButton = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
              counterButton = Random().nextInt(5) + 1;
              print(counterButton);
            });
          },
          child: Image.asset('images/ball$counterButton.png'),
        ),
      ),
    );
  }
}
