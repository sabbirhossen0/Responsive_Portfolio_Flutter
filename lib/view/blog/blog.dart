import 'package:flutter/material.dart';
import 'package:sabbirme/view/animation/typewriter.dart';
class blog extends StatefulWidget {
  const blog({super.key});

  @override
  State<blog> createState() => _blogState();
}

class _blogState extends State<blog> {
  @override
  Widget build(BuildContext context) {
    return Container(
       color: Colors.black,
      child: Column(
        children: [
          Center(
            child: CustomTypewriterText(text: 'This is Blog section  Now it is Underdevelopment . Blog is comming ', fontSize: 20, color: Colors.white),
          )
        ],
      ),
    );
  }
}
