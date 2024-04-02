import 'package:flutter/material.dart';

class AppTextStyte extends StatelessWidget {
  const AppTextStyte({
    super.key,
    required this.text,
    this.color = Colors.black,
    this.fontSize,
    this.fontWeight,
  });
  final String text;
  final Color color;
  final double? fontSize;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: fontWeight,
        color: color,
        fontSize: fontSize,
      ),
    );
  }
}
