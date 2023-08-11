import 'package:flutter/material.dart';

class WeekDayWidget extends StatelessWidget {
  final week = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];

  WeekDayWidget({super.key});

  @override
  Widget build(BuildContext context) {
   return  Row(
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
       children: week.map<Widget>((e) {
         return Text(
           e,
           style: TextStyle(
             fontSize: 14,
             fontWeight: FontWeight.w400,
             color: e == 'Sun' ? Colors.red : Colors.black45,
           ),
         );
       }).toList());
  }

}