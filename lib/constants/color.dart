import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColors {
  static const Color bgColor =  Color.fromARGB(255, 1, 67, 69);
   static const Color mainColor =   Color.fromARGB(255, 1, 67, 69);
 static const Color changeColor = Color.fromARGB(255, 85, 60, 119);
  static const Color black = Color(0xFF000000);
  static const Color green = Color.fromARGB(255, 43, 183, 48);
  static const Color white = Color.fromARGB(255, 255, 255, 255);
 static const Color grey = Color.fromARGB(255, 184, 172, 172);
      
                    
}



const headline1 = TextStyle(fontWeight: FontWeight.w400, fontSize: 16);
const headline2 = TextStyle(fontWeight: FontWeight.w400, fontSize: 14);

abstract class AppColor {
  // static const white = Colors.white;
  static const black = Colors.black;
  static const blue = Colors.blue;

  static const red = Colors.red;
  static const darkerRed = Color(0xFFCB5A5E);

  static const grey = Colors.grey;
  static const darkerGrey = Color(0xFF6C6C6C);
  static const darkestGrey = Color(0xFF626262);
  static const lighterGrey = Color(0xFF959595);
  static const lightGrey = Color(0xFF5d5d5d);

  static const lighterDark = Color(0xFF272727);
  static const lightDark = Color(0xFF1b1b1b);

  static const purpleAccent = Colors.purpleAccent;
}