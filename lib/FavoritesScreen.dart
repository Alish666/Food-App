import 'package:flutter/material.dart';

import 'Meals category screen/MealsList.dart';
import 'model/meal.dart';

class FavoritesScreen extends StatefulWidget {
  static List<Meal> favList = [];
  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 238, 218, 1),
      body: FavoritesScreen.favList.isEmpty
          ? Center(
              child: Text("You haven't added favorite meals yet!"),
            )
          : Column(children: <Widget>[
              Expanded(child: MealsList(list: FavoritesScreen.favList))
            ]),
    );
  }
}
