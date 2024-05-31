 
import 'package:final_project/widget/register.dart';
import 'package:final_project/widget/views/screen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          //height: double.infinity,
          //width: double.infinity,
          child :Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                   height: 20,   
                    ),

              //Text("Log in",style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold,fontFamily: "myfont")),
              Image.asset("assets/images/lg.png" ,),
              SizedBox(
                   height: 20,   
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
                  width: 350,
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
                height: 23,
                ),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  //border: Border.all(color: Color.fromARGB(255, 139, 139, 139)),
                  borderRadius: BorderRadius.circular(6),
                  boxShadow:[BoxShadow(
                    color: Colors.black.withOpacity(0.1),blurRadius:10 ),
                  ], 
                  ),
                  width: 350,
                  height: 55,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 2),
                  child: TextField(
                    decoration: InputDecoration(
                    icon: Icon(
                    Icons.lock,
                    color: Colors.black,
                    ),
                hintText: "Your Password :",
                border: InputBorder.none),
                ),
              ),
              SizedBox(
                height: 50,
                ),
              
              ElevatedButton(
                        onPressed: () {
                       
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>screen1()));
                        },
                        child: Text("Login",style: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.bold,letterSpacing: 1),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFFFF333C)),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(horizontal: 140, vertical: 15)),
                                
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))))
                                ),  
           SizedBox(
            height: 22,
           ),                     
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an accout? "),

              GestureDetector(
                            onTap: (){ 
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Register()));
                               ;},
                            child: Text(" Sign up", style: TextStyle(fontWeight: FontWeight.bold),)),
              
              ],), 
            
          ],),
          
          

          

          
        ),
      
      ),
    );
  }
}