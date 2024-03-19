import 'package:flutter/material.dart';

class Optionconsection extends StatelessWidget {
  const Optionconsection({super.key, required this.text, required this.color});

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        height: 50,
        width: 270,
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(15)),
        child: Center(child: Text(text)),
      ),
    );
  }
}
