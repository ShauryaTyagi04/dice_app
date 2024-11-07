import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: AppBar(
        centerTitle: true,
        elevation: 5.0,
        title: Text(
          'Dice',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        shadowColor: Colors.black,
        foregroundColor: Colors.white,
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}


class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}
class _DicePageState extends State<DicePage>{
  int leftDiceNumber = 1;
  int rightDiceNumber = 6;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: [
              Expanded(
                child: TextButton(child: Image.asset(
                    'images/dice$leftDiceNumber.png'),
                  onPressed: (){
                    setState(() {
                      leftDiceNumber = Random().nextInt(6)+1;
                    });
                  },
                ),
              ),
              Expanded(
                child: TextButton(
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                  onPressed: (){
                    setState(() {
                      rightDiceNumber = Random().nextInt(6)+1;
                    });
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          OutlinedButton(
              onPressed: (){
                setState(() {
                  leftDiceNumber = Random().nextInt(6)+1;
                  rightDiceNumber = Random().nextInt(6)+1;
                });
              },
              child: Text("Roll'em!"),
              style: OutlinedButton.styleFrom(
                elevation: 4.0,
                shadowColor: Colors.black,
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                side: BorderSide(
                  color: Colors.white,
                  width: 2.0,
                ),
                textStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )
              ),
            ),
        ],
      ),
    );
  }
}
