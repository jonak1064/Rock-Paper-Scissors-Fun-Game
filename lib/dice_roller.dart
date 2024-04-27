import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_application_4/player1.dart';
import 'package:flutter_application_4/player2.dart';

//import 'package:flutter/widgets.dart';

//import 'package:flutter/widgets.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

final randomizer = Random();
Widget topText1 = const Text(' ');
Widget topText2 = const Text(' ');

Widget finalResult = const Text(' ');

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll1 = 2;
  var currentDiceRoll2 = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll1 = randomizer.nextInt(3) + 1;
      currentDiceRoll2 = randomizer.nextInt(3) + 1;
      if (currentDiceRoll1 == 1) {
        topText1 = const Text(
          'Rock',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        );
      } else if (currentDiceRoll1 == 2) {
        topText1 = const Text('Paper',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold));
      } else {
        topText1 = const Text('Scissor',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold));
      }

      if (currentDiceRoll2 == 1) {
        topText2 = const Text(
          'Rock',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        );
      } else if (currentDiceRoll2 == 2) {
        topText2 = const Text('Paper',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold));
      } else {
        topText2 = const Text('Scissor',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold));
      }

      if ((currentDiceRoll1 == 1 && currentDiceRoll2 == 1) ||
          (currentDiceRoll1 == 2 && currentDiceRoll2 == 2) ||
          (currentDiceRoll1 == 3 && currentDiceRoll2 == 3)) {
        finalResult = const Text(
          'Its a tie, fuck off Madafaka!',
          style: TextStyle(fontSize: 24),
        );
      } else if (currentDiceRoll1 == 1 && currentDiceRoll2 == 2) {
        finalResult = const Text(
          'Player 2 wins!',
          style: TextStyle(fontSize: 24),
        );
      } else if (currentDiceRoll1 == 1 && currentDiceRoll2 == 3) {
        finalResult = const Text(
          'Player 1 wins',
          style: TextStyle(fontSize: 24),
        );
      } else if (currentDiceRoll1 == 2 && currentDiceRoll2 == 1) {
        finalResult = const Text(
          'Player 1 wins!',
          style: TextStyle(fontSize: 24),
        );
      } else if (currentDiceRoll1 == 2 && currentDiceRoll2 == 3) {
        finalResult = const Text(
          'Player 2 wins!',
          style: TextStyle(fontSize: 24),
        );
      } else if (currentDiceRoll1 == 3 && currentDiceRoll2 == 1) {
        finalResult = const Text(
          'Player 2 wins!',
          style: TextStyle(fontSize: 24),
        );
      } else if (currentDiceRoll1 == 3 && currentDiceRoll2 == 2) {
        finalResult = const Text(
          'Player 2 wins!',
          style: TextStyle(fontSize: 24),
        );
      }
    });
  }

  @override
  Widget build(context) {
    return Center(
      child: Column(
        children: [
          Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Player1(topText1: topText1, currentDiceRoll1: currentDiceRoll1),
                Player2(topText2: topText2, currentDiceRoll2: currentDiceRoll2),
              ]),
          const SizedBox(height: 40),
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(
                  fontSize: 28.0,
                )),
            child: const Text('Roll'),
          ),
          const SizedBox(height: 20),
          finalResult,
        ],
      ),
    );
  }
}
