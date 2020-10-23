import 'package:flutter/material.dart';
import 'package:meal_app/Meals%20category%20screen/MealsList.dart';
import 'package:meal_app/model/data.dart';

import '../model/Category.dart';

class MealsCategoryScreen extends StatefulWidget {
  @override
  _MealsCategoryScreenState createState() => _MealsCategoryScreenState();
}

class _MealsCategoryScreenState extends State<MealsCategoryScreen> {
  @override
  Widget build(BuildContext context) {
    RouteSettings routeSettings = ModalRoute.of(context).settings;
    Category category = routeSettings.arguments;

    final categoryMeals =
        DUMMY_MEALS.where((i) => i.categories.contains(category.id)).toList();
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 238, 218, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 216, 13, 1),
        title: Text(
          category.title,
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () => _backToHomePageScreen(context),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: Column(
          children: <Widget>[Expanded(child: MealsList(list: categoryMeals))]),
    );
  }

  void _backToHomePageScreen(context) {
    Navigator.pop(context);
  }
}
