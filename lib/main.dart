import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text(
            'Fllow the Magic Pool',
          ),
        ),
        body: runPool(),
      ),
    ),
  );
}

class runPool extends StatefulWidget {
  const runPool({Key? key}) : super(key: key);

  @override
  State<runPool> createState() => _runPoolState();
}

class _runPoolState extends State<runPool> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    changeBall();
                  },
                  child: Image.asset('images/ball$ballNum.png'))),
        ],
      ),
    );
  }

  void changeBall() {
    setState(() {
      ballNum = Random().nextInt(6) + 1;
    });
  }
}
