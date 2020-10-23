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
  // final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // key: _scaffoldKey,
      backgroundColor: Color.fromRGBO(242, 238, 218, 1),
      // appBar: AppBar(
      //   backgroundColor: Color.fromRGBO(255, 216, 13, 1),
      //   title: Text(
      //     "Categories",
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   leading: IconButton(
      //       onPressed: () {}, // _scaffoldKey.currentState.openDrawer(),
      //       icon: Icon(
      //         Icons.menu,
      //         color: Colors.black,
      //       )),
      // ),
      body: CategoriesView(),
    );
  }
}
