import 'package:flutter/material.dart';

class loginOrSignUpBtn extends StatelessWidget {
  const loginOrSignUpBtn({super.key,required this.color,required this.title,required this.titleColor,required this.Push});
  final String title;
  final Color color;
  final Color titleColor;
  final Function() Push;

  @override
  Widget build(BuildContext context) {
    return    Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        width: 280,
        height: 60,
         
      
        child: ElevatedButton(child: Text(title,style: TextStyle(
          color: titleColor,
          fontSize: 20
        ),),
       style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  
                  borderRadius: BorderRadius.circular(19.0), // Adjust border radius as needed
                  side: BorderSide(color:titleColor,width: 2), // Set border color here
                ),
              ),
             backgroundColor: MaterialStateProperty.all<Color>(color), // Background color
              foregroundColor: MaterialStateProperty.all<Color>(titleColor),
            ),
        onPressed:Push),
      ),
    );
     
  }
}