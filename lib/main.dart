import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getxcontactlist/view/homescreen.dart';

void main() {
  runApp(const CantactListExample());
}

class CantactListExample extends StatelessWidget {
  const CantactListExample({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeScreen(),
    );
  }
}