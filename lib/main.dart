// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Center(child: Text('Truth n dare')),
          backgroundColor: Color.fromARGB(255, 0, 135, 121),
        ),
        // ignore: prefer_const_constructors
        body: Truthdare(),
      ),
    ),
  );
}

// class Truthdare extends StatelessWidget {
//   const Truthdare({Key? key}) : super(key: key);

// }

class Truthdare extends StatefulWidget {
  const Truthdare({Key? key}) : super(key: key);

  @override
  State<Truthdare> createState() => _TruthdareState();
}

class _TruthdareState extends State<Truthdare> {
  int img = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: [
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                img = Random().nextInt(2) + 1;
                //img += 1;
              });
            },
            child: Image(
              image: AssetImage('images/image$img.jpg'),
            ),
          ),
        ),
      ]),
    );
  }
}
