import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getxcontactlist/theme/dark_theme.dart';
import 'package:getxcontactlist/theme/light_theme.dart';
import 'package:getxcontactlist/view/homescreen.dart';

void main() {
  runApp(const CantactListExample());
}

class CantactListExample extends StatelessWidget {
  const CantactListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: lightTheme,
      darkTheme: darkTheme,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}