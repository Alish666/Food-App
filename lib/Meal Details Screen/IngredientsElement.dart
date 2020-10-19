import 'package:flutter/material.dart';
import 'package:meal_app/model/meal.dart';

class IngredientsElement extends StatelessWidget {
  final List<String> ingredients;
  IngredientsElement({this.ingredients});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 3,
              offset: Offset(0, 0),
            ),
          ],
          color: Colors.white,
          border: Border.all(
            color: Colors.grey[400],
          ),
          borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.only(left: 30, right: 30),
      padding: EdgeInsets.all(15),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: ingredients.length,
        itemBuilder: (context, i) {
          return Container(
            padding: EdgeInsets.only(top: 4, bottom: 4, right: 4),
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 110, 75, 1),
                borderRadius: BorderRadius.circular(5)),
            child: Text(
              "  " + ingredients[i],
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          );
        },
      ),
    );
  }
}
