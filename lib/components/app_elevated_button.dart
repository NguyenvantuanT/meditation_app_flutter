import 'package:flutter/material.dart';
import 'package:meditation_app/themes/themes.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    this.onPressed,
    required this.text,
    this.color = kColorPrimary, required this.height, this.textColor,
  });

  final Function()? onPressed;
  final String text;
  final Color? textColor;
  final Color? color;
  final double height;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height,
        padding: const EdgeInsets.symmetric(horizontal: 26.0),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius:const BorderRadius.all(Radius.circular(40.0))
        ),
        child: Text(text , style: TextStyle(fontWeight: FontWeight.bold , color: textColor ),),
      ),
    );
  }
}
