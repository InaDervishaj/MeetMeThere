import 'package:flutter/material.dart';

import '../main.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Column(
        children: <Widget>[
          Container(
            height: 600,
            margin: EdgeInsets.only(bottom: 10, left: 15, right: 15),
            padding: EdgeInsets.fromLTRB(20, 5, 15, 5),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(
                    0.8, 0.0), // 10% of the width, so there are ten blinds.
                colors: [
                  const Color.fromRGBO(41, 49, 51, 0.39),
                  const Color.fromRGBO(112, 117, 118, 0.1)
                ], // red to yellow
                // repeats the gradient over the canvas
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tennis Match',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: "raleway",
                            fontWeight: FontWeight.bold)),
                    Image.asset('images/student.png'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                    Image.asset('images/Location.png'),
                    SizedBox(width: 20),
                    Text('Hamburg-Altona',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "raleway",
                            fontWeight: FontWeight.bold))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                    Image.asset('images/calendar.png'),
                    SizedBox(width: 20),
                    Text('08.10.2020 15:30',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "raleway",
                            fontWeight: FontWeight.bold))
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.chat, color: Colors.red, size: 35),
                    SizedBox(width: 20),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavigationBarLayout();
  }
}

class EventRow extends StatelessWidget {
  final card = new Container(
    height: 124.0,
    margin: new EdgeInsets.all(10.0),
    decoration: new BoxDecoration(
      color: Color.fromRGBO(41, 49, 51, 0.39),
      shape: BoxShape.rectangle,
      borderRadius: new BorderRadius.circular(8.0),
      boxShadow: <BoxShadow>[
        new BoxShadow(
          color: Colors.black12,
          blurRadius: 10.0,
          offset: new Offset(0.0, 10.0),
        ),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 24.0,
        ),
        child: new Stack(
          children: <Widget>[
            card,
          ],
        ));
  }
}

class HomePageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new EventRow();
  }
}
