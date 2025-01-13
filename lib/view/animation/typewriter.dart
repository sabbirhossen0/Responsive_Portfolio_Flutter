import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class CustomTypewriterText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final bool isBold; // New parameter to control bold text

  // Constructor to accept text, fontSize, color, and isBold parameters
  CustomTypewriterText({
    required this.text,
    required this.fontSize,
    required this.color,
    this.isBold = false, // Default to false if not specified
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        TypewriterAnimatedText(
          text,
          textStyle: TextStyle(
            fontSize: fontSize,
            color: color,
            fontWeight: isBold ? FontWeight.bold : FontWeight.normal, // Conditional bold
          ),
          speed: Duration(milliseconds: 40),
          curve: Curves.linear,
          cursor: '|',
        ),
      ],
      repeatForever: false,
      totalRepeatCount: 1,
    );
  }
}
