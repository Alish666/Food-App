import 'package:flutter/material.dart';
import 'package:meal_app/Meals%20category%20screen/ElementMeal.dart';
import 'package:meal_app/model/meal.dart';

class MealsList extends StatelessWidget {
  final List<Meal> list;

  MealsList({this.list});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        padding: EdgeInsets.only(bottom: 15),
        itemCount: list.length,
        itemBuilder: (context, index) => ElementMeal(
          meal: list[index],
        ),
      ),
    );
  }
}
