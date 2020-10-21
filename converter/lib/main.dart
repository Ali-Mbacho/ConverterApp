import 'package:converter/screens/category_screen.dart';
//import 'package:converter/wiggets/category.dart';
import 'package:flutter/material.dart';

//importing this screen to view only

void main() => runApp(UnitConverter());

class UnitConverter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unit Converter',
      //color: Colors.white,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
              displayColor: Colors.grey[600],
            ),
        // This colors the [InputOutlineBorder] when it is selected
        primaryColor: Colors.grey[500],
        textSelectionHandleColor: Colors.green[500],
      ),
      //default home screen is CategoryScreen()
      home: CategoryScreen(),
    );
  }
}
