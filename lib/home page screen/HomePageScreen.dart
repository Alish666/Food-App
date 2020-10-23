import 'package:flutter/material.dart';
import 'package:meal_app/home%20page%20screen/CategoriesView.dart';
import 'package:meal_app/model/meal.dart';
import 'package:meal_app/model/data.dart';
import 'package:meal_app/Meals category screen/ElementMeal.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 238, 218, 1),
      body: CategoriesView(),
    );
  }
}
