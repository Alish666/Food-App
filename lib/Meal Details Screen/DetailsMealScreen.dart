import 'package:flutter/material.dart';
import 'package:meal_app/Meal%20Details%20Screen/DetailsElement.dart';
import 'package:meal_app/Meals%20category%20screen/MealsList.dart';
import 'package:meal_app/model/SelectedFavList.dart';
import 'package:meal_app/model/data.dart';
import 'package:meal_app/model/meal.dart';
import 'package:meal_app/home page screen/HomePageScreen.dart';
import '../model/Category.dart';
import 'package:meal_app/FavoritesScreen.dart';

class DetailsMealScreen extends StatefulWidget {
  static List<SelectedFavList> favSelectedList = [
    SelectedFavList('m1'),
    SelectedFavList('m2'),
    SelectedFavList('m3'),
    SelectedFavList('m4'),
    SelectedFavList('m5'),
    SelectedFavList('m6'),
    SelectedFavList('m7'),
    SelectedFavList('m8'),
    SelectedFavList('m9'),
    SelectedFavList('m10'),
  ];
  @override
  _DetailsMealScreenState createState() => _DetailsMealScreenState();
}

class _DetailsMealScreenState extends State<DetailsMealScreen> {
  IconData iconData;
  bool isSelected;
  int index;
  String id;
  @override
  Widget build(BuildContext context) {
    print(DetailsMealScreen.favSelectedList);
    RouteSettings routeSettings = ModalRoute.of(context).settings;
    Meal meal = routeSettings.arguments;

    for (var i = 0; i < DetailsMealScreen.favSelectedList.length; i++) {
      if (meal.id == DetailsMealScreen.favSelectedList[i].id) {
        isSelected = DetailsMealScreen.favSelectedList[i].isSelected;
        iconData = DetailsMealScreen.favSelectedList[i].iconData;
        index = i;
        id = DetailsMealScreen.favSelectedList[i].id;
      }
    }

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
        onPressed: () {
          _buttonOperation(meal);
          DetailsMealScreen.favSelectedList[index].isSelected = isSelected;
          DetailsMealScreen.favSelectedList[index].iconData = iconData;
          iconData = null;
          index = null;
          id = null;
          print(DetailsMealScreen.favSelectedList[0].isSelected);
        },
        backgroundColor: Color.fromRGBO(255, 216, 13, 1),
        child: Icon(
          iconData,
          color: Colors.black,
        ),
      ),
    );
  }

  void _backToHomePageScreen(context) {
    Navigator.pop(context);
  }

  void _buttonOperation(Meal meal) {
    setState(() {
      if (isSelected) {
        iconData = Icons.star_border;
        isSelected = false;
        if (!FavoritesScreen.favList.contains(meal.id)) {
          FavoritesScreen.favList.removeWhere((element) => element.id == id);
        } else {}
      } else {
        iconData = Icons.star;
        isSelected = true;
        FavoritesScreen.favList.add(meal);
      }
    });
    print(DetailsMealScreen.favSelectedList[0].isSelected);
  }
}
