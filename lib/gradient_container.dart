import 'package:flutter/material.dart';
import 'package:pro_2/text_section.dart';
import 'package:pro_2/dice_roller.dart';

var beginAlignment = Alignment.topLeft;
var endAlignment = Alignment.bottomRight;
const String outputText = "He heyy there ! Nice to meet you :)";

class GradientContainer extends StatelessWidget {
  const GradientContainer({
    super.key,
    required this.colorList,
  }); // key is used to identify the widget uniquely. It is used to optimize the build method. If the key is not provided, the flutter will automatically generate a key for the widget. super.key is used to pass the key to the parent class.
  final List<Color> colorList;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color:const Color.fromARGB(255, 8, 2, 87),
        gradient: LinearGradient(
          colors: colorList,
          begin: beginAlignment,
          end: endAlignment,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child:const Center(
        child: DiceRoller(),
        // image: AssetImage('assets/images/dice-images/dice-1.png'),

        // height: 200,
        // width: 200,
      ),
    );
  }
}
