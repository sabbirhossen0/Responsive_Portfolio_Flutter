import 'package:flutter/material.dart';
import 'package:sabbirme/view/animation/typewriter.dart';
class course extends StatefulWidget {
  const course({super.key});

  @override
  State<course> createState() => _courseState();
}

class _courseState extends State<course> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        children: [
          Center(
            child: CustomTypewriterText(text: "Course part is Under Development", fontSize: 30, color: Colors.green),
          )
        ],
      ),
    );
  }
}
