import 'package:flutter/material.dart';
import 'package:meal_app/Meals category screen/MealsCategoryScreen.dart';

class FilterScreen extends StatefulWidget {
  static bool isSelectedGluten;
  static bool isSelectedLactose;
  static bool isSelectedVegetarian;
  static bool isSelectedVegan;
  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool isSelectedGluten = false;
  bool isSelectedLactose = false;
  bool isSelectedVegetarian = false;
  bool isSelectedVegan = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 238, 218, 1),
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(
                Icons.save,
                color: Colors.black,
              ),
              onPressed: () {
                setState(() {
                  FilterScreen.isSelectedGluten = isSelectedGluten;
                  FilterScreen.isSelectedLactose = isSelectedLactose;
                  FilterScreen.isSelectedVegetarian = isSelectedVegetarian;
                  FilterScreen.isSelectedVegan = isSelectedVegan;
                });
              })
        ],
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () => Navigator.pop(context)),
        backgroundColor: Color.fromRGBO(255, 216, 13, 1),
        title: Text(
          "Filters",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15),
            child: Text(
              "Adjust your meal selection",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SwitchListTile(
            value: isSelectedGluten,
            onChanged: (val) {
              setState(() {
                isSelectedGluten = val;
              });
            },
            title: Text('Gluten-free'),
            subtitle: Text("Include only gluten-free meals"),
          ),
          SizedBox(
            height: 15,
          ),
          SwitchListTile(
            value: isSelectedLactose,
            onChanged: (val) {
              setState(() {
                isSelectedLactose = val;
              });
            },
            title: Text('Lactose-free'),
            subtitle: Text("Include only lactose-free meals"),
          ),
          SizedBox(
            height: 15,
          ),
          SwitchListTile(
            value: isSelectedVegetarian,
            onChanged: (val) {
              setState(() {
                isSelectedVegetarian = val;
              });
            },
            title: Text('Vegetarian'),
            subtitle: Text("Include only vegetarian meals"),
          ),
          SizedBox(
            height: 15,
          ),
          SwitchListTile(
            value: isSelectedVegan,
            onChanged: (val) {
              setState(() {
                isSelectedVegan = val;
              });
              print(isSelectedVegan);
            },
            title: Text('Vegan'),
            subtitle: Text("Include only vegan meals"),
          ),
        ],
      ),
    );
  }
}
