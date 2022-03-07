import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(const muapp());

class muapp extends StatefulWidget {
  const muapp({Key? key}) : super(key: key);

  @override
  State<muapp> createState() => _muappState();
}

class _muappState extends State<muapp> {
  int n = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: FlatButton(
          child: Center(child: Image.asset('Assets/ball$n.png')),
          onPressed: () {
            setState(() {
              n = Random().nextInt(4) + 1;
            });
            print('pressed');
          },
        ),
      ),
    );
  }
}
