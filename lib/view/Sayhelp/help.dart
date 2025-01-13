import 'package:flutter/material.dart';
import 'package:sabbirme/view/animation/typewriter.dart';
import 'package:sabbirme/view/responsive.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';



class help extends StatefulWidget {
  const help({super.key});

  @override
  State<help> createState() => _helpState();
}

class _helpState extends State<help> {

 final TextEditingController _fname=TextEditingController();
 final TextEditingController _lname=TextEditingController();
  final TextEditingController _email=TextEditingController();
  final TextEditingController _msg=TextEditingController();



  // Function to send an email
  Future<void> sendEmail() async {
    final Email email = Email(
      body: 'Reply Email: ${_email.text}\n\n\n\n'
          'Massage: ${_msg.text}',
      subject: 'Sender name : ${_fname.text}+${_lname.text}',
      recipients: ['sabbirnubcse@gmail.com'], // Replace with the recipient's email
      isHTML: false,
    );

    try {
      await FlutterEmailSender.send(email);
      // Get.snackbar('Success', 'Email sent successfully!',
      //     snackPosition: SnackPosition.BOTTOM);

      print('Email sent successfully');

    } catch (error) {
      // Get.snackbar('Error', 'Failed to send email: $error',
      //     snackPosition: SnackPosition.BOTTOM);
      print('Email sent faild');

    }
  }




  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.black,
      
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10.0,right: 10),
          child: Column(
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
              SizedBox(height: 50,),

              if(Responsive.isMobile(context))
            Column(
              children: [
                Container(
          decoration: BoxDecoration(
              color: Colors.white10
          ),
          child: Column(
            children: [
              Container(
                height: 400,
                width: 400,
                decoration:BoxDecoration(

                    borderRadius: BorderRadius.circular(30)

                ),
                child: Image.asset('assets/client.jpg'),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sabbir Hossen',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30
                    ),),
                    Text('Software Engineer',style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white
                    ),),
                    Text('Are You Looking For Your Business Online Presence? I am here. 🙂',style: TextStyle(

                        fontSize: 16,
                        color: Colors.white
                    ),),

                    Padding(
                      padding: const EdgeInsets.only(left: 50.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Row(
                              children: [
                                Icon(Icons.place,color: Colors.yellow, size: 50,),
                                Column(
                                  children: [
                                    Text('Address',style: TextStyle(
                                        color: Colors.white
                                    ),),
                                    Text('Mirpur, Dhaka – 1216',style: TextStyle(
                                        color: Colors.white
                                    )),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Row(
                              children: [
                                Icon(Icons.account_tree_outlined,color: Colors.yellow, size: 50,),
                                Column(
                                  children: [
                                    Text('Freelance',style: TextStyle(
                                        color: Colors.white
                                    ),),
                                    Text('Available Now',style: TextStyle(
                                        color: Colors.white
                                    )),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(30),
                            child: Row(
                              children: [
                                Icon(Icons.email_outlined,color: Colors.yellow, size: 50,),
                                Column(
                                  children: [
                                    Text('Email',style: TextStyle(
                                        color: Colors.white
                                    ),),
                                    Text('peartsoft@gmail.com',style: TextStyle(
                                        color: Colors.white
                                    )),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )

                  ],
                ),
              )




            ],
          ),
                ),
                SizedBox(width: 20,height: 20,),
                Container(
            decoration: BoxDecoration(
                color: Colors.white10
            ),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTextField(
                  controller: _fname,
                  label: 'First Name',
                  icon: Icons.drive_file_rename_outline,
                ),
                SizedBox(height: 20),
                _buildTextField(
                  controller: _lname,
                  label: 'Last Name',
                  icon: Icons.drive_file_rename_outline,
                ),
                SizedBox(height: 20),
                _buildTextField(
                  controller: _email,
                  label: 'Email',
                  icon: Icons.email_outlined,
                ),
                SizedBox(height: 20),
                _buildTextField(
                  controller: _msg,
                  label: 'Message',
                  icon: Icons.message_outlined,
                  maxLines: 4,
                ),
//button
                Container(
                  width: 250,
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(5)
                  ),
                  child:Center(
                    child: Text('Submit',style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 19
                    ),),
                  ),
                ),

              ],
            )
                )


              ],
            ),


              if(Responsive.isDesktop(context))
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                            // color: Colors.white10
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 400,
                              width: 400,
                              decoration:BoxDecoration(

                                borderRadius: BorderRadius.circular(100)

                              ),
                              child: Image.asset('assets/client.jpg'),
                            ),


                            Padding(
                              padding: const EdgeInsets.only(left: 20.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Sabbir Hossen',style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                     fontSize: 30
                                  ),),
                                  Text('Software Engineer',style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.yellow
                                  ),),
                                  Text('Are You Looking For Your Business Online Presence? I am here. 🙂',style: TextStyle(

                                      fontSize: 16,
                                      color: Colors.white
                                  ),),

                                                  Padding(
                                                    padding: const EdgeInsets.only(left: 50.0),
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.center,
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      children: [
                              Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.place,color: Colors.yellow, size: 50,),
                                    SizedBox(width: 12,),
                                    Column(
                                      children: [
                                        Text('Address',style: TextStyle(
                                                    color: Colors.white
                                        ),),
                                        Text('Mirpur, Dhaka – 1216',style: TextStyle(
                                                    color: Colors.white
                                        )),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Row(
                                  children: [
                                    Icon(Icons.account_tree_outlined,color: Colors.yellow, size: 50,),
                                    SizedBox(width: 12,),
                                    Column(
                                      children: [
                                        Text('Freelance',style: TextStyle(
                                                    color: Colors.white
                                        ),),
                                        Text('Available Now',style: TextStyle(
                                                    color: Colors.white
                                        )),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(30),
                                child: Row(
                                  children: [
                                    Icon(Icons.email_outlined,color: Colors.yellow, size: 50,),
                                    SizedBox(width: 12,),
                                    Column(
                                      children: [
                                        Text('Email',style: TextStyle(
                                                    color: Colors.white
                                        ),),
                                        Text('peartsoft@gmail.com',style: TextStyle(
                                                    color: Colors.white
                                        )),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                                                      ],
                                                    ),
                                                  )

                                ],
                              ),
                            )




                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 20,),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          // color: Colors.white10
                        ),
                        child:Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _buildTextField(
                              controller: _fname,
                              label: 'First Name',
                              icon: Icons.drive_file_rename_outline,
                            ),
                            SizedBox(height: 20),
                            _buildTextField(
                              controller: _lname,
                              label: 'Last Name',
                              icon: Icons.drive_file_rename_outline,
                            ),
                            SizedBox(height: 20),
                            _buildTextField(
                              controller: _email,
                              label: 'Email',
                              icon: Icons.email_outlined,
                            ),
                            SizedBox(height: 20),
                            _buildTextField(
                              controller: _msg,
                              label: 'Message',
                              icon: Icons.message_outlined,
                              maxLines: 4,
                            ),
                            SizedBox(height: 10),
                            InkWell(
                              onTap: (){
                                sendEmail();
                                 print('submit button pressed');
                              },
                              child: Container(
                                width: 250,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(5)
                                ),
                                child:Center(
                                  child: Text('Submit',style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 19
                                  ),),
                                ),
                              ),
                            ),


                          ],
                        )
                      ),
                    ),
                  ],
                )


              ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        TextField(
          controller: controller,
          maxLines: maxLines,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            prefixIcon: Icon(icon, color: Colors.yellow),
            filled: true,
            fillColor: Colors.white10,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.yellow),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: Colors.yellow),
            ),
          ),
        ),
      ],
    );
  }



}
