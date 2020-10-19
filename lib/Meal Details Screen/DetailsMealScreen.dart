import 'package:flutter/material.dart';
import 'package:meal_app/Meal%20Details%20Screen/DetailsElement.dart';
import 'package:meal_app/Meals%20category%20screen/MealsList.dart';
import 'package:meal_app/model/data.dart';
import 'package:meal_app/model/meal.dart';

import '../model/Category.dart';

class DetailsMealScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    RouteSettings routeSettings = ModalRoute.of(context).settings;
    Meal meal = routeSettings.arguments;

    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 238, 218, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 216, 13, 1),
        title: Text(
          meal.title,
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: () => _backToHomePageScreen(context),
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Center(
        child: DetailsElement(meal: meal),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color.fromRGBO(255, 216, 13, 1),
        child: Icon(
          Icons.star,
          color: Colors.black,
        ),
      ),
    );
  }

  void _backToHomePageScreen(context) {
    Navigator.pop(context);
  }
}
