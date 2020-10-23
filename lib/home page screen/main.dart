import 'package:flutter/material.dart';
import 'package:meal_app/BottomTab.dart';
import 'package:meal_app/FilterScreen/FilterScreen.dart';
import 'package:meal_app/Meal%20Details%20Screen/DetailsMealScreen.dart';
import 'package:meal_app/home%20page%20screen/HomePageScreen.dart';
import 'package:meal_app/Meals%20category%20screen/MealsCategoryScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomTab(),
      routes: {
        '/BottomTab': (context) => BottomTab(),
        '/HomePageScreen': (context) => HomePageScreen(),
        '/MealsCategoryScreen': (context) => MealsCategoryScreen(),
        '/DetailsMealScreen': (context) => DetailsMealScreen(),
        '/FilterScreen': (context) => FilterScreen(),
      },
    );
  }
}
