import 'package:flutter/material.dart';

class Qustioncontainer extends StatelessWidget {
  const Qustioncontainer({super.key,required this.text});
final String  text;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 270,
      width: 370,
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16))),
      child:  Center(child: Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
    );
  }
}
