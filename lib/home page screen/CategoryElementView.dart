import 'package:flutter/material.dart';

import '../Meals category screen/MealsCategoryScreen.dart';
import '../model/Category.dart';

class CategoryElementView extends StatelessWidget {
  final Category category;

  CategoryElementView({this.category});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(20),
      onTap: () => _goToMealsCategoryScreen(context),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 7,
        shadowColor: category.color,
        color: category.color,
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                category.title,
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _goToMealsCategoryScreen(context) {
    Navigator.pushNamed(context, '/MealsCategoryScreen', arguments: category);
  }
}
