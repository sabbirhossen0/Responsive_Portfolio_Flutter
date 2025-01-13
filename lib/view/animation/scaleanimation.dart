import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class scaleanimtx extends StatefulWidget {
  final String text;
  final double fontSize;
  final Color color;
  final bool isBold; // Parameter to control bold text

  // Constructor to accept text, fontSize, color, and isBold parameters
  scaleanimtx({
    required this.text,
    required this.fontSize,
    required this.color,
    this.isBold = false, // Default to false if not specified
  });

  @override
  _ScaleAnimTxState createState() => _ScaleAnimTxState();
}

class _ScaleAnimTxState extends State<scaleanimtx> {
  bool _showAnimation = true;

  @override
  void initState() {
    super.initState();
    // Set a delay to stop the animation after 1 second
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _showAnimation = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return _showAnimation
        ? AnimatedTextKit(
      animatedTexts: [
        ScaleAnimatedText(
          widget.text,
          textStyle: TextStyle(
            fontSize: widget.fontSize,
            color: widget.color,
            fontWeight: widget.isBold ? FontWeight.bold : FontWeight.normal,
          ),
          scalingFactor: 0.5, // Adjusts the scale amount, can be customized
        ),
      ],
      repeatForever: false,
      totalRepeatCount: 1,
    )
        : Text(
      widget.text,
      style: TextStyle(
        fontSize: widget.fontSize,
        color: widget.color,
        fontWeight: widget.isBold ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
