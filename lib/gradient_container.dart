import 'package:flutter/material.dart';
import 'package:hello/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  final List<Color> colors;

  const GradientContainer(this.colors, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: colors,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        child: const DiceRoller());
  }
}
