import 'package:converter/screens/category_screen.dart';
import 'package:converter/screens/convert_screen.dart';
import 'package:converter/wiggets/category.dart';
import 'package:flutter/material.dart';

//importing this screen to view only
import 'package:converter/screens/convert_screen.dart';

void main() => runApp(UnitConverter());

class UnitConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      //default home screen is CategoryScreen()
      home: CategoryScreen(),
    );
  }
}
