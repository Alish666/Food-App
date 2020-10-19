import 'package:flutter/material.dart';
import 'package:meal_app/home%20page%20screen/CategoryElementView.dart';
import '../Meals category screen/MealsCategoryScreen.dart';
import '../model/data.dart';

class CategoriesView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, top: 20, right: 20),
      child: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 3 / 2,
            maxCrossAxisExtent: 200,
            crossAxisSpacing: 26,
            mainAxisSpacing: 26),
        children: DUMMY_CATEGORIES
            .map((i) => CategoryElementView(category: i))
            .toList(),
      ),
    );
  }
}
