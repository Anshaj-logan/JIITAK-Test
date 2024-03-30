import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String entertext;

  final Color textColor;
  final double fontSize;

  const CustomTextWidget({
    required this.entertext,
    required this.fontSize,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      entertext,
      style: TextStyle(
        fontFamily: "Noto Sans JP",
        fontSize: fontSize,
        color: textColor,
      ),
    );
  }
}
