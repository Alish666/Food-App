import 'package:flutter/material.dart';
import 'package:meal_app/FavoritesScreen.dart';
import 'package:meal_app/home%20page%20screen/HomePageScreen.dart';

class BottomTab extends StatefulWidget {
  @override
  _BottomTabState createState() => _BottomTabState();
}

class _BottomTabState extends State<BottomTab> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _currentIndex = 0;
  void _switch(index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Map<String, Object>> screens = [
    {'page': HomePageScreen(), 'title': 'Categories'},
    {'page': FavoritesScreen(), 'title': 'Favorites'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: _getDrawer(),
      backgroundColor: Color.fromRGBO(242, 238, 218, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(255, 216, 13, 1),
        title: Text(
          screens[_currentIndex]['title'],
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
            icon: Icon(
              Icons.menu,
              color: Colors.black,
            )),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.shifting,
        onTap: _switch,
        elevation: 5,
        backgroundColor: Color.fromRGBO(255, 216, 13, 1),
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(255, 216, 13, 1),
            activeIcon: Icon(
              Icons.home,
              color: Colors.black,
              size: 30,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.black),
            ),
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color.fromRGBO(255, 216, 13, 1),
            activeIcon: Icon(
              Icons.star,
              color: Colors.black,
              size: 30,
            ),
            title: Text(
              "Favorites",
              style: TextStyle(color: Colors.black),
            ),
            icon: Icon(
              Icons.star,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: screens[_currentIndex]['page'],
    );
  }

  Widget _getDrawer() {
    return Drawer(
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              child: Text(
                "Cooking By The" + "\n         Book!",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(242, 238, 218, 1)),
              ),
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 110, 75, 1),
              ),
              padding:
                  EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 30),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => Navigator.of(context).pushNamed('/'),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                leading: Icon(
                  Icons.dinner_dining,
                  color: Colors.grey,
                  size: 40,
                ),
                title: Text(
                  " Meals",
                  style: TextStyle(
                      color: Color.fromRGBO(38, 50, 84, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 16),
                leading: Icon(
                  Icons.settings,
                  color: Colors.grey,
                  size: 40,
                ),
                title: Text(
                  " Filters",
                  style: TextStyle(
                      color: Color.fromRGBO(38, 50, 84, 1),
                      fontWeight: FontWeight.bold,
                      fontSize: 23),
                ),
              ),
            ),
          ],
        ),
        decoration: BoxDecoration(color: Color.fromRGBO(242, 238, 218, 1)),
      ),
    );
  }
}
