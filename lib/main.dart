import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: const Text('Dice'),
        ),
        body: const HomePage(),
      ),
    ),
  );
}



class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  // ignore: non_constant_identifier_names
  int DiceNumber1 = 1;
  // ignore: non_constant_identifier_names
  int DiceNumber2 = 2;

  // ignore: non_constant_identifier_names
  void DiceMovement() {
    setState(() {
      DiceNumber1 = Random().nextInt(6) + 1;
      // ignore: avoid_print
      print('DiceNumber = $DiceNumber1');
    });
  }

  // ignore: non_constant_identifier_names
  void DiceMovement2() {
    setState(() {
      DiceNumber2 = Random().nextInt(6) + 1;
      // ignore: avoid_print
      print('DiceNumber = $DiceNumber2');
    });
  }

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    // ignore: avoid_unnecessary_containers
    return Center(
      child: Row(
        children:  <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                DiceMovement();
              },
              child:Image.asset('images/dice$DiceNumber1.jpg'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                DiceMovement2();
              },
              child:Image.asset('images/dice$DiceNumber2.jpg'),
            ),
          ),
        ],
      ),
    );
  }
}
















