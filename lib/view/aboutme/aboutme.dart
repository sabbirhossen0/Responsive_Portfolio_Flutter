import 'package:flutter/material.dart';
import 'package:sabbirme/view/responsive.dart';
import 'package:sabbirme/view/animation/scaleanimation.dart';
import 'package:sabbirme/view/animation/typewriter.dart';
class Aboutme extends StatefulWidget {
  const Aboutme({super.key});

  @override
  State<Aboutme> createState() => _AboutmeState();
}

class _AboutmeState extends State<Aboutme> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: [
            if(Responsive.isMobile(context))
              Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/sabbir2.png',
                          height: 200, // Adjust height as needed
                          width: 200,  // Adjust width as needed
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            if(Responsive.isDesktop(context))
              Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 40.0),
                      child: ClipOval(
                        child: Image.asset(
                          'assets/sabbir2.png',
                          height: 300, // Adjust height as needed
                          width: 300,  // Adjust width as needed
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )
                ],
              ),


            Container(
                decoration: BoxDecoration(
                    color: Colors.black87
                ),
                child: scaleanimtx(text: 'Sabbir Hossen', fontSize: 35, color: Colors.white,isBold: true,)
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.black87
                ),
                child: scaleanimtx(text: 'Software Engineer', fontSize: 20, color: Colors.yellow,isBold: true,)
            ),

          ],
        ),
Padding(
  padding: const EdgeInsets.only(left: 40.0,right: 40),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('ABOUT ME ',style: TextStyle(
          color: Colors.yellow,
          fontWeight: FontWeight.bold,
          fontSize: 30
      ),),

      RichText(
        text: TextSpan(
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,

          ),
          children: [
            TextSpan(text: "I’m a Full Stack developer who is passionate about making "),
            TextSpan(
              text: "error-free websites",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            TextSpan(
              text:
              " with 100% client satisfaction. I am passionate about learning and sharing my knowledge with others as publicly as possible. I love to solve real-world problems. I am ",
            ),
            TextSpan(
              text: "strategic and goal-oriented",
              style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
            ),
            TextSpan(
              text:
              ", and I always work with an end goal in mind. Over the past years, I created 100s of websites for my clients. I pride myself on doing quality work and maintaining excellent communication. Most of the time I work with WordPress but some technologies I enjoy working with include ReactJS, JavaScript, and PHP.",
            ),
          ],
        ),
      ),
    ],
  ),
),

        SizedBox(height: 50,),

        //skill and education

        if(Responsive.isMobile(context))
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white10,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:[
                      Center(
                        child: Text('EDUCATION',style: TextStyle(
                          color: Colors. yellow,
                          fontSize:25,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),

                      SizedBox(height: 10,),

                      Icon(Icons.menu_book,color: Colors.yellow,),
                      Text('2012-14',style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                      ),),
                      Text('M.Sc. In Information and Communication Technology',style: TextStyle(fontSize: 20,color: Colors.white,),),
                      SizedBox(height: 5,),
                      Icon(Icons.book,color: Colors.yellow,),
                      Text('2012-14',style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                      ),),
                      Text('B. Sc. In Physics',style: TextStyle(fontSize: 20,color: Colors.white,),),
                      SizedBox(height: 10,),
                      Icon(Icons.book_outlined,color: Colors.yellow,),
                      Text('2012-14',style: TextStyle(
                          color: Colors.white,
                          fontSize: 16
                      ),),
                      Text('B. Sc. In Physics',style: TextStyle(fontSize: 20,color: Colors.white,),),
                    ],
                  ),
                ),
              ) ,
              SizedBox(width: 20,height: 20,),
              Container(
                width: 400,
                  decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Skill',style:TextStyle(
                      color: Colors.yellow,
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 10),
                  buildSkillContainer("Python", 0.8, context),
                  SizedBox(height: 10),
                  buildSkillContainer("Django Rest Framework", 0.8, context),
                  SizedBox(height: 10),
                  buildSkillContainer("Dart", 0.7, context),
                  SizedBox(height: 10),
                  buildSkillContainer("Flutter", 0.6, context),
                  SizedBox(height: 10),
                  buildSkillContainer("Java", 0.4, context),
                  SizedBox(height: 10),
                  buildSkillContainer("C", 0.4, context),
                  SizedBox(height: 10),
                  buildSkillContainer("C++", 0.4, context),
                  SizedBox(height: 10),
                  buildSkillContainer("Mysql", 0.4, context),
                  SizedBox(height: 10),
                  buildSkillContainer("Postgresql", 0.4, context),
                ],
              ),
                  ),
                ) ,

            ],
          ),
        ),

        if(Responsive.isDesktop(context))
          Padding(
            padding: const EdgeInsets.only(left: 100.0,right: 100),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:[
                          Center(
                            child: Text('EDUCATION',style: TextStyle(
                              color: Colors. yellow,
                              fontSize:25,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),

                          SizedBox(height: 10,),

                          Icon(Icons.menu_book,color: Colors.yellow,),
                          Text('2022-Present',style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),),
                          Text('B.Sc. In Computer Science Engineering',style: TextStyle(fontSize: 20,color: Colors.white,),),
                          SizedBox(height: 5,),
                          Icon(Icons.book,color: Colors.yellow,),
                          Text('2019-20',style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),),
                          Text('HSC. In Science',style: TextStyle(fontSize: 20,color: Colors.white,),),
                          SizedBox(height: 10,),
                          Icon(Icons.book_outlined,color: Colors.yellow,),
                          Text('2017-18',style: TextStyle(
                              color: Colors.white,
                              fontSize: 16
                          ),),
                          Text('SSC. In Science',style: TextStyle(fontSize: 20,color: Colors.white,),),
                        ],
                      ),
                    ),
                  ),
                ) ,
             Spacer(),
                Container(
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Skil',style:TextStyle(
                            color: Colors.yellow,
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),),
                        SizedBox(height: 10),
                        buildSkillContainer("Python", 0.8, context),
                        SizedBox(height: 10),
                        buildSkillContainer("Django Rest Framework", 0.8, context),
                        SizedBox(height: 10),
                        buildSkillContainer("Dart", 0.7, context),
                        SizedBox(height: 10),
                        buildSkillContainer("Flutter", 0.6, context),
                        SizedBox(height: 10),
                        buildSkillContainer("Java", 0.4, context),
                        SizedBox(height: 10),
                        buildSkillContainer("C", 0.4, context),
                        SizedBox(height: 10),
                        buildSkillContainer("C++", 0.4, context),
                        SizedBox(height: 10),
                        buildSkillContainer("Mysql", 0.4, context),
                        SizedBox(height: 10),
                        buildSkillContainer("Postgresql", 0.4, context),
                      ],
                    ),
                  ),
                ) ,

              ],
            ),
          ),

        SizedBox(height: 150,),
        //Experience what i have done
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: Center(
                child: Column(
                  children: [
                    Text('EXPERIENCE',style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),),
                    Text('What I have done?',style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold

                    ),)
                  ],
                ),
              ),
            ),


            SizedBox( height:50,),
            Padding(
              padding: const EdgeInsets.only(left: 40.0),
              child: Column(
                children:  Experience(),
              ),
            ),
          ],
        ),

        SizedBox(height: 150,),


        //Contact
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
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
            ),


            SizedBox( height:50,),
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


  //Experience
  List<Widget> Experience() {
    return [
      Experienceview(
     des: 'I am  Sabbir Hossen, I am a pixel-perfect web developer. I am experienced and an expert in the web development section and working since 2014. Full and fresh hand code is my power. Client satisfaction is my first priority. Work with me and be happy with the result.',
        web:'www.fiver.com' ,
        year: '2018 - Present',
      ),
      SizedBox(width: 40, height: 20), // Adds space between items
      Experienceview(
        des: 'I am  Sabbir Hossen, I am a pixel-perfect web developer. I am experienced and an expert in the web development section and working since 2014. Full and fresh hand code is my power. Client satisfaction is my first priority. Work with me and be happy with the result.',
        web:'www.upwork.com' ,
        year: '2017 - Present',
      ),
      SizedBox(width: 40, height: 20),
      Experienceview(
        des: 'I am  Sabbir Hossen, I am a pixel-perfect web developer. I am experienced and an expert in the web development section and working since 2014. Full and fresh hand code is my power. Client satisfaction is my first priority. Work with me and be happy with the result.',
        web:'Peart Soft' ,
        year: '2018 - Present',
      ),
    ];
  }

  // Method to create each card
  Widget Experienceview({required String year, required String web, required String des}) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8, // Adjust width based on screen size
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white10,
      ),
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.computer, color: Colors.yellow,size: 50,),
              SizedBox(width: 10), // Space between icon and text
              Expanded( // Allows text to take up available space
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      year,
                      style: TextStyle(color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      web,
                      style: TextStyle(color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                    ),
                    SizedBox(height: 5),
                    RichText(
                      text: TextSpan(
                        text: des,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2, // Limit to two lines
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }


//for skil
  Widget buildSkillContainer(String skill, double level, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(skill, style: TextStyle(fontSize: 16,color:Colors.white)),
        SizedBox(height: 5),
        Container(
          height: 20,
          width: MediaQuery.of(context).size.width * 0.8, // Total width
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(5),
          ),
          child: FractionallySizedBox(
            alignment: Alignment.centerLeft,
            widthFactor: level, // Width factor based on skill level
            child: Container(
              decoration: BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.circular(5),
              ),
              child:  Row(
                children: [
                  Text(skill, style: TextStyle(fontSize: 16)),
                  Spacer(),
                  Text('${(level * 100).toInt()}%'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

}
