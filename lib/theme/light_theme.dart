import 'package:flutter/material.dart';

import 'app_color.dart';

ThemeData lightTheme=ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColor.bodyColor,
  hintColor: AppColor.textColor,
  primaryColor:AppColor.buttonBackgroundColor,
  textTheme: const TextTheme(
   headlineMedium: TextStyle(color: Colors.black,fontSize: 35,fontWeight: FontWeight.bold)
  ),

  floatingActionButtonTheme: FloatingActionButtonThemeData(          backgroundColor: Colors.pink,
),
   appBarTheme: AppBarTheme(
    backgroundColor: AppColor.buttonBackgroundColor,
  )
);