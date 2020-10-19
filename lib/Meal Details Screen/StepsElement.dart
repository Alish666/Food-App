import 'package:flutter/material.dart';
import 'package:meal_app/model/meal.dart';

class StepsElement extends StatelessWidget {
  final List<String> steps;
  StepsElement({this.steps});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 30, right: 30),
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
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey[400])),
      padding: EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: steps.length,
        itemBuilder: (context, i) {
          return Container(
            width: 100,
            height: 50,
            margin: EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                CircleAvatar(
                  child: Text(
                    "# " + i.toString(),
                    style: TextStyle(color: Colors.black),
                  ),
                  backgroundColor: Color.fromRGBO(255, 216, 13, 1),
                ),
                SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: Text(
                    steps[i],
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
