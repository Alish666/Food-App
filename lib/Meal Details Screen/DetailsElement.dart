import 'package:flutter/material.dart';
import 'package:meal_app/Meal%20Details%20Screen/IngredientsElement.dart';
import 'package:meal_app/Meal%20Details%20Screen/StepsElement.dart';
import 'package:meal_app/model/meal.dart';

class DetailsElement extends StatelessWidget {
  final Meal meal;
  DetailsElement({this.meal});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: <Widget>[
        Image.network(meal.imageUrl),
        SizedBox(
          height: 15,
        ),
        Center(
          child: Text("Ingredients",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ),
        SizedBox(
          height: 15,
        ),
        IngredientsElement(ingredients: meal.ingredients),
        SizedBox(
          height: 15,
        ),
        Center(
          child: Text(
            "Steps",
            style: TextStyle(
                color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        StepsElement(steps: meal.steps),
        SizedBox(
          height: 15,
        )
      ],
    );
  }
}
