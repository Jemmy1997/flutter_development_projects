import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I am rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.amber,
        body: Center(
          child: Image(
//              image: NetworkImage(
//                  'https://cdn.eso.org/images/thumb300y/eso1907a.jpg'),
//            ),
            image: AssetImage('images/rich.jpg'),
          ),
        ),
      ),
    ));
