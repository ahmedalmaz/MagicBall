import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(home: BallPage()),
  );
}


class BallPage extends StatefulWidget {

  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNum=1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Ask Me AnyThing'),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: FlatButton(
          onPressed: (){
            setState(() {
              ballNum=Random().nextInt(4)+1;
            });
          },
          child: Container(
            child: Image.asset('images/ball$ballNum.png'),
          ),
        ),
      ),
    );
  }
}

