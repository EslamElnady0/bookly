import 'package:flutter/material.dart';

class CustomBookActionsButton extends StatelessWidget {
  final BorderRadius borderRadius;
  final Color color;
  final TextStyle textStyle;
  final String text;
  final void Function()? onPressed;
  const CustomBookActionsButton(
      {super.key,
      required this.borderRadius,
      required this.color,
      required this.textStyle,
      required this.text,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(borderRadius: borderRadius)),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
