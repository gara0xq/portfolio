import 'package:flutter/material.dart';

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10), // Adds vertical space around the line
      height: 1, // Height of the line (thickness)
      color: Colors.grey.shade700, // Color of the line
    );
  }
}
