import 'package:flutter/material.dart';

class CounterText extends StatelessWidget {
  final String text;
  const CounterText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
      ),
    );;
  }
}
