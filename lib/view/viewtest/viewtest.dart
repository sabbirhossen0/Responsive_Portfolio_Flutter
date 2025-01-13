import 'package:flutter/material.dart';
// layout for bottom navigation
import 'package:sabbirme/view/Home/home.dart';
import 'package:sabbirme/view/aboutme/aboutme.dart';



class control extends StatefulWidget {
  const control({super.key});

  @override
  State<control> createState() => _controlState();
}

class _controlState extends State<control> {
  // Current index for BottomNavigationBar
  var _selectedIndex = 0;

  // List of pages that correspond to each BottomNavigationBar item
  final List<Widget> _pages = [
    Home(),
    Aboutme()
  
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.black87,
            child: Column(
              children: [
                ElevatedButton(onPressed: (){_onItemTapped(0);}, child: Text('home')),
                ElevatedButton(onPressed: (){_onItemTapped(1);}, child: Text('About me ')),
                _pages[_selectedIndex],
                Text('Header widget here',style: TextStyle(
                  color: Colors.white
                ),)

              ],
            ),
          ),
        ), // Display the selected screen

      ),
    );
  }
}
