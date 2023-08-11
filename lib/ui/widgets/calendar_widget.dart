



import 'package:flutter/material.dart';

class DaysWidget extends StatelessWidget{
  final String day;
  final Color color;
  final int weekDay;

   const DaysWidget({super.key, required this.day, required this.color, required this.weekDay});
  
  @override
  Widget build(BuildContext context) {
      return Container(
      height: 40,
      width: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color
      ),
      child: Text(day,style: 
       TextStyle(
        fontSize: 14,fontWeight: 
       FontWeight.w500,
       color: weekDay==6
       ?Colors.red
       :Colors.black),),
    );
  }
}