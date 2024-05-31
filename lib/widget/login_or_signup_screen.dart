 
import 'package:final_project/widget/login.dart';
import 'package:flutter/material.dart';

class  LoginSignUp extends StatefulWidget {
  const LoginSignUp ({super.key});

  @override
  State<LoginSignUp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginSignUp> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                //color: Colors.amber,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Text("Welcome",style: TextStyle(fontSize: 33,fontWeight: FontWeight.bold,fontFamily: "myfont")),
                    SizedBox(
                      height: 40,
                    ),
                    Image.asset("assets/images/welcome.jpg",width: 300, ),
                    SizedBox(
                      height: 100,
                    ),
                    ElevatedButton(
                        onPressed: () {
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                        },
                        child: Text("Get Started",style: TextStyle(fontSize: 16,color: Colors.white, fontWeight: FontWeight.bold,letterSpacing: 1),
                        ),
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Color(0xFFFF333C)),
                            padding: MaterialStateProperty.all(
                                EdgeInsets.symmetric(horizontal: 80, vertical: 15)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))))
                                ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }
}