import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class coursDetailBtn extends StatelessWidget {
  const coursDetailBtn({super.key,required this.borderColor,required this.title,required this.mainColor});
  final Color borderColor;
  final String title;
  final Color mainColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      height: 60,
      decoration: BoxDecoration(
         color: mainColor,
        border: Border.all(
          color: borderColor,
          width: 2.5,
        ),
        borderRadius: BorderRadius.circular(12),
      ), 
      child: Center(
         child: Text(title,style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          
         ),),
      ),
    );
  }
}