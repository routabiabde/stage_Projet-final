// ignore: unused_import
 
import 'dart:ui';

import 'package:final_project/compononts/coursDetailBtn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CoursDetails extends StatelessWidget {
   

  const CoursDetails({super.key,required this.img,required this.desxription,required this.students,required this.price,required this.nbrHour,required  this.nbrLess});
  final String img;
  final String desxription;
  final String students;
  final int price;
  final double nbrHour;
  final int nbrLess;
    
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       body:  SafeArea(child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: 
          
          [
            Color.fromRGBO(236, 255, 250,1),
            Colors.white,
            
          ]
          ),
        ),
        child:   Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 12,
                right: 10,              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  const Icon(Icons.arrow_back),
                  const Text('Cours Outlin',style: 
                  TextStyle(
                    fontFamily: "coursDetailFont",
                    fontSize: 30,
                    fontWeight: FontWeight.w300
                  ),),
                  const Icon(Icons.broadcast_on_home_sharp,size: 33,),
                  
                ],
              ),
            ),
             Padding(
              padding: EdgeInsets.only(
               top: 26,
               right: 20,
               left: 20,
              ),
               child: Column(
                 children:[ Container(
                   width: double.infinity,
                   height: 190,
                   decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(image: AssetImage(img),fit: BoxFit.cover),
                      boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),  
                    spreadRadius: 5,  
                    blurRadius: 7, 
                    offset: Offset(0, 3), 
                  ),
                  
                               ],
                   ),
                             ),
                   Padding(
                    padding: const EdgeInsets.only(
                      top: 18,
                      left: 7,
                      right: 7,
                    ),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 280,
                          child: Text(desxription,style: const TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w700,
                            fontFamily:"coursDetailFont" ,
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 1,
                          ),
                          child: Text("\$"+price.toString(),style:const  TextStyle(
                            fontSize: 20,
           color:  Color.fromRGBO(0, 255, 187, 1),
                             
                          ),))
                      ],
                     ),
                   ) ,
                   Padding(
                    padding: const EdgeInsets.only(
                      left: 7,
                      top: 11,
                    ),
                     child: Row(
                       
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                             
                           const  Icon(Icons.video_camera_back,size: 25,  color: Color.fromARGB(255, 99, 98, 98)),
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 4,
                              ),
                              child: Text(nbrLess.toString()+" Lessons",style:const  TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                fontFamily:"coursDetailFont" ,
                                  color: Color.fromARGB(255, 138, 131, 131)
                              ),),
                            )
                          ],
                        ),
                        Padding(
                           padding: const EdgeInsets.only(
                                left: 18,
                              ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                               
                             const  Icon(Icons.lock_clock,size: 25,  color: Color.fromARGB(255, 109, 109, 109)),
                              Padding(
                                 padding:const  EdgeInsets.only(
                                left: 4,
                              ),
                                child:  Text(nbrHour.toString()+" Hours",style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  fontFamily:"coursDetailFont" ,
                                  color: Color.fromARGB(255, 138, 131, 131)
                                ),),
                              )
                            ],
                          ),
                        )
                      ],
                     ),
                   )  ,
                   Padding(
                    padding:const  EdgeInsets.only(
                      top: 16,
                      left: 5
                    ),
                     child: Row(
                      children: [
                         Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                             color: Colors.black,
                          
                          ),
                          child: const Center(child: 
                          Icon(Icons.person,color: Colors.white,size: 55,),),
                         ),
                        const  Padding(
                          padding: EdgeInsets.only(
                            left: 10
                          ),
                           child:   Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Roger D Ace',style: TextStyle(
                                fontFamily: "coursDetailFont",
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                              ),),
                               Text('Roger D Ace',style: TextStyle(
                                fontFamily: "coursDetailFont",
                                fontSize: 19,
                                color:   Color.fromARGB(255, 96, 96, 96),
                                fontWeight: FontWeight.bold
                              ),)
                            ],
                           ),
                         ),
                         Padding(
                          padding: const EdgeInsets.only(
                            top: 1,
                            left: 110,
                          ),
                         child: Row(
                            children: [ 
                                const Icon(Icons.star,color: Colors.amber,size: 21,),
                               const SizedBox(width: 1,),
                                Text(4.4.toString(),style:const  TextStyle(
                              fontSize: 20,
                                       color: Colors.amber
                               
                            ),),],
                            
                          ))
                      ],
                     ),
                   ) ,
                 const   Padding(
                    padding: EdgeInsets.only(
                      top: 18,
                    ),
                     child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                     coursDetailBtn(borderColor: Color.fromARGB(255, 75, 149, 206),title: "Description",mainColor: Color.fromARGB(255, 191, 235, 253),),      
                     coursDetailBtn(borderColor: Color.fromARGB(255, 203, 202, 202),title: "Lessons",mainColor: Colors.white,),      
                     coursDetailBtn(borderColor: Color.fromARGB(255, 203, 202, 202),title: "Review",mainColor: Colors.white,),      
                     
                      ],
                     ),
                   ),
                   Padding(
                    padding:const  EdgeInsets.only(
                      top: 15,
                      bottom: 14,
                      left: 7
                    ),
                     child: SingleChildScrollView(
                      
                       child: Container(
                        
                        width:double.infinity,
                        height: 220,
                        child:const  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text('what you will learn :',style:
                            TextStyle(
                              fontSize: 27,
                              fontFamily: "coursDetailFont",
                              fontWeight: FontWeight.w600
                            )
                             ,),
                             Padding(
                              padding: EdgeInsets.only(
                                left: 5,
                                top: 12,
                              ),
                               child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Icon(Icons.arrow_circle_right_outlined),
                                   SizedBox(width: 10,),
                                   Text("Dans ce cours de programmation en\n , vous apprendrez les bases et les \nconcepts avancés de ce langage\n populaire.Le programme est structuré\n pour vous guider depuis les principes   ",
                                   style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "coursDetailFont",
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
                   Container(
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
         color:  const Color.fromARGB(255, 75, 149, 206),
         
        borderRadius: BorderRadius.circular(14),
      ), 
      child:const  Center(
         child: Text("Buy it Now ",style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w500,
          color: Colors.white,
         ),),
      ),
    )
                             
                         ]),
             ),
              
          ],
        ),

       ))
       
       );

       
       }}