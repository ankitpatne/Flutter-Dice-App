import 'package:flutter/material.dart';
import 'dart:math';

final randomizer =
    Random(); // we added the Random() outside the setsate method because if we add it inside the setstate method, it will be called every time the setstate method is called and then object creation will take place every time the setstate method is called. Hence, we added it outside the setstate method so that the object is created only once and then the same object is used every time the setstate method is called.

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  // _ makes the class private and can only be used in this file
  var currentDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-images/dice-$currentDiceNumber.png',
          height: 200,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ), // used to add space between the widgets. its size is fixed. even if the content in it doesnt fit, the size of the SizedBox remains the same.
        TextButton(
          onPressed: () {
            setState(
              () {
                currentDiceNumber = randomizer.nextInt(6) + 1;
              },
            );
          },
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 10,
              left: 20,
              right: 20,
            ),
            backgroundColor: const Color.fromARGB(255, 49, 70, 255),
            foregroundColor: const Color.fromARGB(255, 255, 255, 255),
            textStyle: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
