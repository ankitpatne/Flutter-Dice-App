import 'package:flutter/material.dart';


class TextSection extends StatelessWidget {
   const TextSection(this.outputText,
    {super.key}
    );
    final String outputText;
    @override
    Widget build(BuildContext context) {
      return Text(
          outputText,
          style: const TextStyle(
            fontSize: 40,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        );
    }
}
