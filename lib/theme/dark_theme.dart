import 'package:flutter/material.dart';

import 'app_color.dart';

ThemeData darkTheme=ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColor.bodyColorDark,
  hintColor: AppColor.textColor,
  primaryColor:AppColor.buttonBackgroundDark,
  textTheme: const TextTheme(
   headlineMedium: TextStyle(color: Colors.white,fontSize: 35,fontWeight: FontWeight.bold)
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColor.buttonBackgroundDark,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(backgroundColor: Colors.blueGrey),

);