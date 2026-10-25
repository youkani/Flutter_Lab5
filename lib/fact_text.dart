import 'package:flutter/material.dart';

class FactText extends StatelessWidget {
  final String text;
  const FactText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 32,
      ),
       textAlign: TextAlign.center,
    );
  }
}