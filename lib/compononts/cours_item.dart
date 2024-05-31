import 'package:final_project/widget/course_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CoursItem extends StatelessWidget {
  const CoursItem({super.key,required this.img,required this.desxription,required this.students,required this.price,required this.nbrHour,required this.nbrLess});
  final String img;
  final String desxription;
  final String students;
  final int price;
  final int nbrLess;
  final double nbrHour;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Padding(
        padding: EdgeInsets.all(12),
        child: Container(
          
          width: double.infinity,
          height: 410,
             decoration: BoxDecoration(
               borderRadius: BorderRadius.circular(20),
                color: Colors.white,
               boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),  
                  spreadRadius: 5,  
                  blurRadius: 7, 
                  offset: Offset(0, 3), 
                ),

              ],
             ),
             child:Column(
              children: [
                Expanded(flex: 3,child: Container(
                  
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius:  BorderRadius.only(
                       topLeft: Radius.circular(20),
                       topRight: Radius.circular(20),
                    ),
                    image: DecorationImage(image: AssetImage(img),fit: BoxFit.cover) ,
                    
                  ),
                )),
                Expanded(flex: 5,child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 13
                    ),
                    child: Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 125,
                          height: 35,
                          margin: EdgeInsets.only(
                            right: 160,
                            top: 10
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amber
                          ),
                          child: Center(
                            child: Text('wow',style: TextStyle(
                              color: Colors.black ,
                              fontSize: 17,
                            ),),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 12
                          ),
                          child: Container(
                            width: 300,
                            height: 61,
                            child: Text(desxription,
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold
                                    ),
                            ),
                          ),
                        ),
                        Text('44 lessons - 22 Quizzes - 20 hours',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color.fromARGB(255, 104, 103, 103)
                        ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 6,
                            
                            
                          ),
                          
                          child: SizedBox(
                            width: double.infinity,
                            child: Row(
                               crossAxisAlignment: CrossAxisAlignment.start
                               ,
                              
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.star,color: Colors.amber,size: 20,),
                                    Icon(Icons.star,color: Colors.amber,size: 20,),
                                    Icon(Icons.star,color: Colors.amber,size: 20,),
                                    Icon(Icons.star,color: Colors.amber,size: 20,),
                                    Icon(Icons.star,color: const Color.fromARGB(255, 41, 37, 24),size: 20,),
                                    // Text('(172)',style: TextStyle(
                                    //   fontWeight: FontWeight.w600
                                    // ),)
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.person,size: 20,),
                                    Text(students)
                                  ],
                                ),
                                Text('Bigenner')
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 8,
                            left: 5
                            
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                   
                                    children: [
                                     Text(price.toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                                    Padding(padding: EdgeInsets.only(left: 9),
                                     child :Text('${price -20}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: const Color.fromARGB(255, 139, 139, 139)),),

                                    ),
                                  ],),
                                 Padding(
                                  padding: EdgeInsets.only(
                                    top: 7
                                  ),
                                   child: Row(
                                               mainAxisAlignment: MainAxisAlignment.spaceBetween,                    
                                    children: [
                                      Icon(Icons.lock_clock,color: Color.fromARGB(255, 177, 30, 20),),
                                    
                                        Text('5 days left for this price',style: TextStyle(
                                          color: Color.fromARGB(255, 177, 30, 20),
                                        ),)
                                    ],
                                   ),
                                 )
                                ],
                              
                              ),
                               Padding(
      padding: EdgeInsets.only(
        left: 15
      ),
      child: Container(
        width: 90,
        height: 45,
         
      
        child: ElevatedButton(child: Text('view',style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          
        ),),
       style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  
                  borderRadius: BorderRadius.circular(7), // Adjust border radius as needed
                  // side: BorderSide(color:Color.fromARGB(255, 177, 30, 20),width: 2), // Set border color here
                ),
              ),
             backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 203, 14, 58)), // Background color
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
        onPressed:(){
          Navigator.push(context, MaterialPageRoute(builder: (con)=>CoursDetails(img: img, desxription: desxription, students: students, price: price,nbrHour: nbrHour,nbrLess: nbrLess,)));
        }),
      ),
    ),
     
                            ],
                          ),
                        )
                                  
                         
                      ],
                    ),
                  ),
                )),
              ],
             ) ,
             
        ),
      ),
    );
  }
}