import 'package:flutter/material.dart';
import 'package:my_app_bunicheva/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: (Scaffold(
        body: GradientContainer(
                const Color.fromARGB(255, 185, 234, 149),
                const Color.fromARGB(255, 90, 166, 202),
                const Color.fromARGB(255, 109, 106, 195),
        ),
      )),
    ),
  );
}