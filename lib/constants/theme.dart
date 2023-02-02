


import 'package:flutter/material.dart';



CustomTheme currentTheme = CustomTheme ();
CustomTheme currentThemeCard = CustomTheme ();



class CustomTheme with ChangeNotifier {
  static  bool _isDarkTheme = false;
  static  bool _isDarkThem = false;
  ThemeMode get currentTheme  =>  _isDarkTheme
  
  ? ThemeMode.dark 
  : ThemeMode.light;
  
  void clicTheme () {
    _isDarkTheme = !_isDarkTheme;
    
    notifyListeners();
  }
static ThemeData get lightTheme {
  return ThemeData(
    
    appBarTheme: AppBarTheme(color: Colors.green),
     backgroundColor: Color.fromARGB(255, 1, 67, 69),
      accentColor: Colors.grey,
      hintColor: Colors.white,
       toggleableActiveColor: Colors.white,
      cardColor: Color.fromARGB(255, 66, 88, 88),
     
      selectedRowColor: Color.fromARGB(255, 66, 88, 88),
    textTheme: const TextTheme(
      headline1: TextStyle(color: Colors.white, fontSize: 18),
      headline2: TextStyle(color: Colors.black, fontSize: 20),
      bodyText1: TextStyle(color: Colors.black),
      bodyText2: TextStyle(color: Colors.black)
    )
  );
}

static ThemeData get darkTheme{
   return ThemeData(
     appBarTheme: const AppBarTheme(color: Colors.green),
        // primaryColor: Colors.grey,
        accentColor: Colors.green,
       toggleableActiveColor: Colors.green,
        selectedRowColor: Colors.green,
        cardColor: const Color.fromARGB(255, 1, 67, 69),
         backgroundColor: const  Color.fromARGB(255, 1, 67, 69),
         scaffoldBackgroundColor: const Color.fromARGB(255, 66, 88, 88),
     textTheme: const TextTheme(
    
      headline1: TextStyle(color: Colors.green, fontSize: 18),
      headline2: TextStyle(color: Colors.black, fontSize: 20),
      bodyText1: TextStyle(color: Colors.white),
      bodyText2: TextStyle(color: Colors.white)
   
    )

);

}}