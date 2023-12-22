import 'dart:math';
import 'package:flutter/material.dart';
import 'package:hello/styled_text.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  final Random randomizer = Random();
  int currentDiceRoll = 6;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });

    print('Change dice image...');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //const StyledText('Flutter - The Complete Guide 3'),
        const StyledText('Hello World'),
        const SizedBox(height: 10),
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
                padding: const EdgeInsets.only(top: 10),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28)),
            child: const Text('Roll Dice')),
      ],
    );
  }
}
