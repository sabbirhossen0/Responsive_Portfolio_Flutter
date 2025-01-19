import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'responsive.dart';
import 'package:sabbirme/view/aboutme/aboutme.dart';
import 'package:sabbirme/view/Home/home.dart';
import 'package:sabbirme/view/course/course.dart';
import 'package:sabbirme/view/animation/typewriter.dart';
import 'package:sabbirme/view/blog/blog.dart';
import 'package:sabbirme/view/Sayhelp/help.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class routing extends StatefulWidget {
  const routing({super.key});

  @override
  State<routing> createState() => _HomeState();
}

class _HomeState extends State<routing> {
  bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }
  var _selectedIndex = 0;

  // List of pages that correspond to each BottomNavigationBar item
  final List<Widget> _pages = [
   Home(),
    Aboutme(),
    course(),
    blog(),help(),

  ];

  bool _isHovering = false;

  void _onHover(bool hovering) {
    setState(() {
      _isHovering = hovering;
    });
  }


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black
          ),
        
          child: SingleChildScrollView(
            child: Column(
              children: [

                //drawer
                if(Responsive.isMobile(context))
                  Row(

                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                 Padding(
                   padding: const EdgeInsets.only(left: 25.0,top: 18),
                   child: Row(
           children: [
             // Text('sabbirhossen',style: TextStyle(
             //     color: Colors.white,
             //     fontWeight: FontWeight.bold,
             //     fontSize: 20
             // ),),

             AnimatedTextKit(
               animatedTexts: [
                 WavyAnimatedText('Sabbir Hossen',textStyle: TextStyle(color:Colors.white, fontSize: 25, fontWeight: FontWeight.bold)

                 ),
               ],

               totalRepeatCount: 100000,
               isRepeatingAnimation: true,
               pause: const Duration(milliseconds: 10000),
               // displayFullTextOnTap: true,
               // stopPauseOnTap: true,
               // onTap: () {
               //   print("Tap Event");
               // },
             ),





             Icon(
               Icons.circle,
               size: 12.0, // Adjust size for the dot
               color: Colors.green, // Set dot color
             ),
           ],
                   ),
                 ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0,top: 25),
                        child: InkWell(
                            onTap: () {
                              showTopSheet(context);
                            },
                            child: Icon(Icons.menu,color: Colors.yellow,)),
                      )
                    ],
                  ),
                //web bar
                if(Responsive.isDesktop(context))
                Container(
              height: 60,
              child: Row(
                children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child:

              // Text('Sabbir Hossen',style: TextStyle(
              //   color: Colors.white,
              //   fontWeight: FontWeight.bold,
              //   fontSize: 35
              // ),),

              AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('Sabbir Hossen',textStyle: TextStyle(color:Colors.white, fontSize: 25, fontWeight: FontWeight.bold)),
                ],
                isRepeatingAnimation: true,
                pause: const Duration(milliseconds: 1000),
                displayFullTextOnTap: true,
                stopPauseOnTap: true,
                onTap: () {
                  print("Tap Event");
                },
              ),


            ),
                  Icon(
                    Icons.circle,
                    size: 12.0, // Adjust size for the dot
                    color: Colors.green, // Set dot color
                  ),

            Spacer(),

            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(onPressed: (){

                _onItemTapped(0);
              }, child:Text('Home',style: TextStyle(
                color: Colors.white,
                fontSize:20,
                fontWeight: FontWeight.bold,
              ),) ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: MouseRegion(
                onHover:(_) => _onHover(true),
                onExit: (event) => _onHover(false),
                child: TextButton(onPressed: (){
                  _onItemTapped(1);
                }, child:Text('About me',style: TextStyle(
                  color: Colors.white,
                  fontSize:20,
                  fontWeight: FontWeight.bold,
                ),) ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(onPressed: (){

                _onItemTapped(2);
              }, child:Text('Courses',style: TextStyle(
                color: Colors.white,
                fontSize:20,
                fontWeight: FontWeight.bold,
              ),) ),
            ),

            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: TextButton(onPressed: (){
                _onItemTapped(3);
              }, child:Text('Blog',style: TextStyle(
                color: Colors.white,
                fontSize:20,
                fontWeight: FontWeight.bold,
              ),) ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(50)
              ),

              child: InkWell(
                onTap: () {
            _onItemTapped(4);
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Say Help',style: TextStyle(
                    color: Colors.white,
                    fontSize:20,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              )
            )

                ],
              ),
            ),







                _pages[_selectedIndex],





                // bottom header
                  SizedBox(height: 150,),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white10
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 30,),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blue, // Set any color you'd like here
                            child: ClipOval(
                              child: Image.asset(
                                'assets/facebook.jpeg',
                                fit: BoxFit.cover,
                                width: 100, // Match the diameter of CircleAvatar for a full fit
                                height: 100,
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blue, // Set any color you'd like here
                            child: ClipOval(
                              child: Image.asset(
                                'assets/github.jpg',
                                fit: BoxFit.cover,
                                width: 100, // Match the diameter of CircleAvatar for a full fit
                                height: 100,
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blue, // Set any color you'd like here
                            child: ClipOval(
                              child: Image.asset(
                                'assets/linkdine.jpeg',
                                fit: BoxFit.cover,
                                width: 100, // Match the diameter of CircleAvatar for a full fit
                                height: 100,
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.blue, // Set any color you'd like here
                            child: ClipOval(
                              child: Image.asset(
                                'assets/youtube.png',
                                fit: BoxFit.cover,
                                width: 100, // Match the diameter of CircleAvatar for a full fit
                                height: 100,
                              ),
                            ),
                          ),
                          Spacer(),
                          if(Responsive.isDesktop(context))
                          Padding(
                            padding: const EdgeInsets.only(right: 20.0),
                            child: Text('© All Rights Reserved 2022 - 2024 | Sabbir Hossen',style: TextStyle(
                              color: Colors.yellow
                            ),),
                          )
                        ],
                      ),
                      if(Responsive.isMobile(context))
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 0.0,top: 10,bottom: 10),
                            child: Text('© All Rights Reserved 2022 - 2024 \n Sabbir Hossen',style: TextStyle(
                                color: Colors.yellow
                            ),),
                          ),
                        )
                    ],
                  ),
                )

              ],
            ),
          ),
        ),
      ),

    );
  }



//topsheet
  void showTopSheet(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: "Dismiss",
      pageBuilder: (context, _, __) =>
          Align(
            alignment: Alignment.topCenter,
            child: Material(
              color: Colors.transparent,
              child: SafeArea(
                child: Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width/1.5,
                  height: 250,
                  padding: EdgeInsets.all(16),
                  color: Colors.yellow,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: (){
                            _onItemTapped(0);
                            Navigator.pop(context);
                          },
                          child: Text("Home", style: TextStyle(color:Colors.black87,fontWeight: FontWeight.bold,fontSize: 20))),
                      SizedBox(height: 10),
                      InkWell(
                          onTap: (){
                            _onItemTapped(1);
                            Navigator.pop(context);
                          },
                          child: Text("About Me", style: TextStyle(color:Colors.black87,fontWeight: FontWeight.bold,fontSize: 20))),
                      SizedBox(height: 10),
                      InkWell(
                          onTap: (){
                            _onItemTapped(2);
                            Navigator.pop(context);
                            },
                          child: Text("Courses", style: TextStyle(color:Colors.black87,fontWeight: FontWeight.bold,fontSize: 20))),
                
                      SizedBox(height: 10),
                      InkWell(
                          onTap: (){
                            _onItemTapped(3);
                            Navigator.pop(context);

                          },
                          child: Text("Blog", style: TextStyle(color:Colors.black87,fontWeight: FontWeight.bold,fontSize: 20))),
                
                      SizedBox(height: 10),
                      InkWell(
                          onTap: (){
                            _onItemTapped(4);
                            Navigator.pop(context);
                          },
                          child: Text("Say Hello", style: TextStyle(color:Colors.black87,fontWeight: FontWeight.bold,fontSize: 20))),
                    ],
                  ),
                ),
              ),
            ),
          ),
      transitionDuration: Duration(milliseconds: 300),
      transitionBuilder: (_, anim, __, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(0, -1), // Start off-screen from the top
            end: Offset(0, 0), // Slide down to original position
          ).animate(anim),
          child: child,
        );
      },
    );
  }






}
