import 'package:flutter/material.dart';
import 'package:meal_app/model/meal.dart';

class ElementMeal extends StatefulWidget {
  final Meal meal;

  ElementMeal({this.meal});

  @override
  _ElementMealState createState() => _ElementMealState();
}

class _ElementMealState extends State<ElementMeal> {
  String get complexityText {
    if (widget.meal.complexity == Complexity.Simple) {
      return "Simple";
    } else if (widget.meal.complexity == Complexity.Challenging) {
      return "Challenging";
    } else if (widget.meal.complexity == Complexity.Hard) {
      return "Hard";
    }
  }

  String get affordabilityText {
    if (widget.meal.affordability == Affordability.Affordable) {
      return "Affordable";
    } else if (widget.meal.affordability == Affordability.Luxurious) {
      return "Luxurious";
    }
    if (widget.meal.affordability == Affordability.Pricey) {
      return "Pricey";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 15, top: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      elevation: 5,
      child: InkWell(
        borderRadius: BorderRadius.circular(13),
        onTap: () => _goToDetailsMealScreen(context),
        child: Column(
          children: <Widget>[
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)),
                  child: Image.network(
                    widget.meal.imageUrl,
                    fit: BoxFit.fitWidth,
                    width: double.infinity,
                    height: 250,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                    width: 300,
                    child: Text(
                      widget.meal.title,
                      style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 0.7),
                          fontSize: 25),
                    ),
                    decoration:
                        BoxDecoration(color: Color.fromRGBO(0, 0, 0, 0.5)),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                children: [
                  Row(children: <Widget>[
                    Icon(Icons.watch_later),
                    SizedBox(
                      width: 5,
                    ),
                    Text(widget.meal.duration.toString() + " min")
                  ]),
                  Row(children: <Widget>[
                    Icon(Icons.local_post_office),
                    SizedBox(
                      width: 5,
                    ),
                    Text(complexityText)
                  ]),
                  Row(children: <Widget>[
                    Icon(Icons.attach_money),
                    SizedBox(
                      width: 5,
                    ),
                    Text(affordabilityText)
                  ]),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              ),
            ),
            SizedBox(
              height: 15,
            )
          ],
        ),
      ),
    );
  }

  void _goToDetailsMealScreen(context) {
    Navigator.pushNamed(context, '/DetailsMealScreen', arguments: widget.meal);
  }
}
