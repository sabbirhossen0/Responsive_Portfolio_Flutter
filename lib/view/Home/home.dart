import 'package:flutter/material.dart';
import 'package:sabbirme/view/responsive.dart';
import 'package:sabbirme/view/animation/typewriter.dart';
import 'package:flutter_animate/flutter_animate.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if(Responsive.isMobile(context))
          Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: Image.asset(
                    'assets/sabbir2.png',
                    height: 200, // Adjust height as needed
                    width: 200,  // Adjust width as needed
                    fit: BoxFit.cover,
                  ),
                ),
              )
            ],
          ),
        //description and profile
        Stack(
          children:<Widget> [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0,right: 60),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomTypewriterText(
                            text: 'Hello, My Name Is ',
                            color: Colors.white,
                            fontSize: 18,
                            isBold: true,
                          ),

                          SizedBox(height: 20,),
                          CustomTypewriterText(
                            text: 'Sabbir Hossen ',
                            color: Colors.white,
                            fontSize: 35,
                            isBold: true,
                          ),
                          SizedBox(height: 20,),
                          CustomTypewriterText(
                            text: 'I AM Software Developer',
                            color: Colors.yellow,
                            fontSize: 25,
                            isBold: true,
                          ),



                          SizedBox(height: 20,),
                          CustomTypewriterText(
                            text: 'From Dhaka, Bangladesh. I’m a Hybrid Application developer who is passionate about making error-free Hybrid Application. I am good at Flutter and Django. I love to talk with you about your unique. ',
                            color: Colors.white,
                            fontSize: 18,
                            isBold: false,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: Colors.yellow
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Text('Contact',style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold
                                ),),
                              ),
                            ).animate(
                              // Add a 40px left-to-right movement
                              onPlay: (controller) => controller.repeat(reverse: true),
                            ).move(
                              begin: Offset(0, 0),
                              end: Offset(40, 0),
                              duration: Duration(seconds: 1),
                              curve: Curves.easeInOut,
                            ),
                          )


                        ],
                      ),
                    )),
                if(Responsive.isDesktop(context))
                  Expanded(
                      flex:1,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 40.0),
                            // child: Image.asset ('assets/sabbir.png',height:500 ,fit: BoxFit.cover,),
                            child: Image.asset ('assets/sabbir2.png',height:500,fit: BoxFit.cover,),
                          ),
                        ],
                      )),


              ],
            ),





            Positioned(
              bottom: 0,
              right: 0,
              child: Container(

                decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow,width: 4),
                    borderRadius: BorderRadius.circular(70),
                    color: Colors.black87
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('4+Years \nExperience  ',style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ).animate(
                // Add a 40px left-to-right movement
                onPlay: (controller) => controller.repeat(reverse: true),
              ).move(
                begin: Offset(0, 0),
                end: Offset(40, 0),
                duration: Duration(seconds: 1),
                curve: Curves.easeInOut,
              ),
            ),


            Positioned(
              bottom: 50,
              right: 100,
              child: Container(

                decoration: BoxDecoration(
                    border: Border.all(color: Colors.yellow,width: 4),
                    borderRadius: BorderRadius.circular(80),
                    color: Colors.black87
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Text('31+\ncompleted\nProject  ',style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold
                  ),),
                ),
              ).animate(
                // Add a 40px left-to-right movement
                onPlay: (controller) => controller.repeat(reverse: true),
              ).move(
                begin: Offset(0, 0),
                end: Offset(0, 80),
                duration: Duration(seconds: 1),
                curve: Curves.easeInOut,
              ),
            ),


          ],
        ),

        SizedBox(height: 160,),
        // new  What i do
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Column(
                  children: [
                    Text('WHAT I DO',style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                    Text('My Service',style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold

                    ),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 50,),
            Column(
              children: [
                if(Responsive.isDesktop(context))
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Row(
                      children: whatdo(),
                    ),
                  ),
                if(Responsive.isMobile(context))
                  Column(
                    children: whatdo(),
                  )
              ],
            )





          ],
        ),

        SizedBox(height: 150,),

        //show new project
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Column(
                  children: [
                    Text('PORTFOLIO',style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                    Text('My Cases',style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold

                    ),)
                  ],
                ),
              ),
            ),

            if(Responsive.isDesktop(context))
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Row(
                  children: project(),
                ),
              ),
            if(Responsive.isMobile(context))
              Column(
                children: project(),
              )

          ],
        ),


        SizedBox(height: 160,),

        //new trastimonial
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Column(
                  children: [
                    Text('TESTIMONIALS',style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                    Text('What my Clients are saying?',style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold

                    ),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 50,),
            if(Responsive.isDesktop(context))
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: Row(
                  children: Trestimonial(),
                ),
              ),
            if(Responsive.isMobile(context))
              Column(
                children: Trestimonial(),
              )

          ],
        ),
        SizedBox(height: 160,),

        //contact
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Column(
                  children: [
                    Text('CONTACT',style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                    Text('Are You Looking For Your Business Online Presence? I am here. 🙂',style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold

                    ),)
                  ],
                ),
              ),
            ),
            Column(
              children: [
                if(Responsive.isDesktop(context))
                  Padding(
                    padding: const EdgeInsets.only(left: 40.0),
                    child: Row(
                      children: Contact(),
                    ),
                  ),
                if(Responsive.isMobile(context))
                  Column(
                    children: Contact(),
                  )

              ],
            ),
          ],
        ),





      ],
    );
  }




  // widget  list for portfolio project

  List<Widget> project() {
    return [
      projectview(
          image:'assets/img1.jpg',
          langname:'Flutter',
          type: 'Font-End Development'
      ),
      SizedBox(width: 40, height: 20), // Adds space between items
      projectview(
          image:'assets/img2.jpg',
          langname:'Django',
          type: 'Back-End Development'
      ),
      SizedBox(width: 40, height: 20),
      projectview(
          image:'assets/img3.jpg',
          langname:'Figma',
          type: 'Hybrid Application Design'
      ),
    ];
  }

  // Method to create each card
  Widget projectview({required String langname, required String image,required String type}) {
    return Container(
      height: 350,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white10,
      ),
      padding: const EdgeInsets.all(1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(image),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(langname,style: TextStyle(
                color: Colors.yellow
            ),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(type,style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),),
          ),


          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets. only(left: 8.0),
            child: Row(
              children: [
                Text('Say Project',style:TextStyle(
                    color: Colors.white
                ),),
                SizedBox(width: 5,),
                Icon(Icons.arrow_forward_rounded,color: Colors.yellow,)
              ],
            ),
          )







        ],
      ),
    );
  }

  // widget  list for do

  List<Widget> whatdo() {
    return [
      doview(
        des:'Specialized in creating interactive and responsive user interfaces using modern  technologies. Adept at translating design mockups into clean, efficient code with a focus on performance and usability',
        icon: 'assets/development.png',
        service: 'Font-End Development',
        id: 1,
      ),
      SizedBox(width: 40, height: 20), // Adds space between items
      doview(
        des:'Experienced in building robust and scalable server-side applications. Proficient in designing APIs, managing databases, and ensuring secure and efficient communication between systems',
        icon: 'assets/backend.png',
        service: 'BackEnd Development',
        id: 2,
      ),
      SizedBox(width: 40, height: 20),
      doview(
        des:'Proficient in Figma design, creating sleek user interfaces and intuitive user experiences with a strong eye for aesthetics and usability.',
        icon: 'assets/figma.png',
        service: 'Figma',
        id: 3,
      ),
    ];
  }

  // Method to create each card
  Widget doview({required int id, required String icon, required String service, required String des}) {
    return Container(
      height: 250,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white10,
      ),
      padding: const EdgeInsets.all(1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0,top: 20),
            child: Image.asset(icon,height: 50,width: 50,color: Colors.yellow,),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(service,style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20
            ),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: Text(des,style: TextStyle(
              color: Colors.white,

            ),),
          ),

          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 12.0),
            child: InkWell(
              onTap: (){
                if(id==1){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Profile button pressed for item with id: $id'),
                      duration: Duration(seconds: 2), // Duration of the SnackBar
                      behavior: SnackBarBehavior.floating, // Optional: floating style
                    ),
                  );
                }
                if(id==2){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Profile button pressed for item with id: $id'),
                      duration: Duration(seconds: 2), // Duration of the SnackBar
                      behavior: SnackBarBehavior.floating, // Optional: floating style
                    ),
                  );
                }
                if(id==3){
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Profile button pressed for item with id: $id'),
                      duration: Duration(seconds: 2), // Duration of the SnackBar
                      behavior: SnackBarBehavior.floating, // Optional: floating style
                    ),
                  );
                }





              },
              child: Row(
                children: [
                  Text('Say hello',style:TextStyle(
                      color: Colors.white
                  ),),
                  SizedBox(width: 5,),
                  Icon(Icons.arrow_forward_rounded,color: Colors.yellow,)
                ],
              ),
            ),
          )

        ],
      ),
    );
  }


  // widget  list for Trestimonial

  List<Widget> Trestimonial() {
    return [
      Trustimonialview(
        profile: 'assets/man1.jpg',
        name: 'Sabbir Hossen',
        des: 'He is a very nice guy to work with. Thanks a lot for helping and I will do more business with you 🙂',
      ),
      SizedBox(width: 40, height: 20), // Adds space between items
      Trustimonialview(
        profile: 'assets/man2.jpg',
        name: 'Helim rahman',
        des: 'Sabbir is always great to work with. He is extremely responsive and always returns his work in a timely manner, most of the time it is completed early! Great work quality as well. Thank you Sabbir!',
      ),
      SizedBox(width: 40, height: 20),
      Trustimonialview(
        profile: 'assets/man3.jpg',
        name: 'Mahbub kabir',
        des: 'Great experience, highly recommend him. Worked through all my questions with me and was very timely in his responsiveness',
      ),
    ];
  }

  // Method to create each card
  Widget Trustimonialview({required String profile, required String name, required String des}) {
    return Container(
      height: 270,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white10,
      ),
      padding: const EdgeInsets.all(1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12.0,left: 12,right: 12),
            child: Text(
              des,
              style: TextStyle(
                // fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          CircleAvatar(
            radius: 50,
            backgroundColor: Colors.blue, // Set any color you'd like here
            child: ClipOval(
              child: Image.asset(
                profile,
                fit: BoxFit.cover,
                width: 100, // Match the diameter of CircleAvatar for a full fit
                height: 100,
              ),
            ),
          ),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.yellow,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 5),

        ],
      ),
    );
  }

  // widget  list for contact

  List<Widget> Contact() {
    return [
      buildInfoCard(
        icon: Icons.account_circle_rounded,
        title: 'Sabbir Hossen',
        subtitle: 'Software Developer',
      ),
      SizedBox(width: 40, height: 20), // Adds space between items
      buildInfoCard(
        icon: Icons.account_tree_outlined,
        title: 'Freelance',
        subtitle: 'Available Right Now',
      ),
      SizedBox(width: 40, height: 20),
      buildInfoCard(
        icon: Icons.email,
        title: 'Email',
        subtitle: 'peartsoft@gmail.com',
      ),
    ];
  }

  // Method to create each card
  Widget buildInfoCard({required IconData icon, required String title, required String subtitle}) {
    return Container(
      height: 250,
      width: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white10,
      ),
      padding: const EdgeInsets.all(1.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.yellow, size: 40,),
          SizedBox(height: 10),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 25,
            ),
          ),
          SizedBox(height: 5),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.white,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }











}
