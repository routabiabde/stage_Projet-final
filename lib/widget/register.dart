import 'package:final_project/widget/views/screen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 
class   Register extends StatelessWidget {
  const  Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
    
        
        child: Column(children: [
        SizedBox(
          height: 100
          ),
          Text("Welcome Back :",style: TextStyle(color: Color(0xEEE72929),fontSize: 20,fontWeight: FontWeight.w700,fontFamily: "myfont")),
        SizedBox(
          height: 50
          ), 
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
              
            children: [
              
              Container(
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  
                  borderRadius: BorderRadius.circular(6),
                  boxShadow:[BoxShadow(
                    color: Colors.black.withOpacity(0.1),blurRadius:10 ),
                  ], 
                  ),
                  width: 180,
                  height: 55,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 2),
                  child: TextField(
                    decoration: InputDecoration(
                    icon: Icon(
                    Icons.person_3_outlined,
                    color: Colors.black,
                    ),
                hintText: "First Name :",
                border: InputBorder.none),
                ),
                
              ),

              Container(
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  //border: Border.all(color: Color.fromARGB(255, 139, 139, 139)),
                  borderRadius: BorderRadius.circular(6),
                  boxShadow:[BoxShadow(
                    color: Colors.black.withOpacity(0.1),blurRadius:10 ),
                  ], 
                  ),
                  width: 180,
                  height: 55,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 2),
                  child: TextField(
                    decoration: InputDecoration(
                    icon: Icon(
                    Icons.person_3_outlined,
                    color: Colors.black,
                    ),
                hintText: "Last Name :",
                border: InputBorder.none),
                ),
              ),
            ],
            

          ), 

          SizedBox(
            height: 22,
          ),

        Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  //border: Border.all(color: Color.fromARGB(255, 139, 139, 139)),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:[BoxShadow(
                    color: Colors.black.withOpacity(0.1),blurRadius:10 ),
                  ], 
                  ),
                  width: 380,
                  height: 55,
                  
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 2),
                  child: TextField(
                    decoration: InputDecoration(
                    icon: Icon(
                    Icons.person,
                    color: Colors.black,
                    
                    ),
                hintText: "Your Email :",
                border: InputBorder.none),
                ),
              ),

              SizedBox(
            height: 22,
             ),

          Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  //border: Border.all(color: Color.fromARGB(255, 139, 139, 139)),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:[BoxShadow(
                    color: Colors.black.withOpacity(0.1),blurRadius:10 ),
                  ], 
                  ),
                  width: 380,
                  height: 55,
                  
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 2),
                  child: TextField(
                    decoration: InputDecoration(
                    icon: Icon(
                    Icons.person,
                    color: Colors.black,
                    
                    ),
                hintText: "Your Password :",
                border: InputBorder.none),
                ),
              ),

          SizedBox(
            height: 22,
          ),
    


        Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  //border: Border.all(color: Color.fromARGB(255, 139, 139, 139)),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow:[BoxShadow(
                    color: Colors.black.withOpacity(0.1),blurRadius:10 ),
                  ], 
                  ),
                  width: 380,
                  height: 55,
                  
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 2),
                  child: TextField(
                    decoration: InputDecoration(
                    icon: Icon(
                    Icons.person,
                    color: Colors.black,
                    
                    ),
                hintText: "Your Phone :",
                border: InputBorder.none),
                ),
              ), 

          SizedBox(
            height: 30,
          ),

          ElevatedButton(
                        onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>screen1()));

                        },
                        child: Text("Register",style: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.bold,letterSpacing: 1),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFFFF333C)),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(horizontal: 140, vertical: 15)),
                                
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))))
                                ), 
            

          
        ],),

        
      ),

    );
  }
}