import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomText extends StatelessWidget {
  Alignment alignment;
  double fontSize;
  FontWeight fontWeight;
  String text;
  Color color;
  CustomText(
      {super.key,
      required this.text,
      this.alignment = Alignment.topLeft,
      this.fontSize = 18,
      this.fontWeight = FontWeight.normal,
      this.color = Colors.white});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
