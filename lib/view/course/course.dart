import 'package:flutter/material.dart';
import 'package:sabbirme/view/animation/typewriter.dart';

class course extends StatefulWidget {
  const course({super.key});

  @override
  State<course> createState() => _CourseState();
}

class _CourseState extends State<course> {
  final List<String> courseList = ['DSA', 'Flutter', 'Python', 'Django'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Courses'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Center(
            child: CustomTypewriterText(
              text: "Welcome To Peart Lab  ",
              fontSize: 24,
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 20),
          ListView.builder(
            itemCount: courseList.length,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.grey[900],
                margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                child: ListTile(
                  leading: const Icon(Icons.book, color: Colors.green),
                  title: Text(
                    courseList[index],
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, color: Colors.green),
                  onTap: () {
                    // TODO: Navigate to course detail page
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
