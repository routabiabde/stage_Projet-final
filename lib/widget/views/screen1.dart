import 'package:final_project/Model/Cours.dart';
import 'package:final_project/Model/MyData.dart';
import 'package:final_project/compononts/cours_item.dart';
import 'package:flutter/material.dart';

 

class screen1 extends StatefulWidget {
    screen1({super.key});

  @override
  State<screen1> createState() => _HomePageState();
}

class _HomePageState extends State<screen1> {
     List<Course> listCourses = MyData.courses;
  
  @override
  Widget build(BuildContext context) {
    return   
        Scaffold(
           drawer: Drawer(),
      appBar: AppBar(
      title: Center(
        // padding: EdgeInsets.only(
        //   left: 10
        // ),
        child: Text('just Learning')),
      
      actions:  [
        IconButton(
          icon: Icon(Icons.settings),
          onPressed: () { 
          },
        ),
      ],
    ),
 
          body: SizedBox(
           
            child: Padding(
              padding: EdgeInsets.only(
                top: 10
              ),
              child: ListView.builder(
                    itemCount:MyData.courses.length,
                    itemBuilder: (context, i) {
              return  CoursItem(img: listCourses[i].image, desxription: listCourses[i].description, students: listCourses[i].students, price: listCourses[i].price,nbrHour: listCourses[i].lessonsNbr*2,nbrLess: listCourses[i].lessonsNbr,);
                    },
                  ),
            ),
          ),
        );}}
