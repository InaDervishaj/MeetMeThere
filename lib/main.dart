import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class ChangableWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BiggerNumberGameState();
  }
}

class BottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavigationBarLayout();
  }
}

class BiggerNumberGameState extends State {
  final List<String> entries = <String>['Tennis Match', 'Doppelpartner', 'Tennis for Fun'];
  final List<String> locations = <String>['Hamburg-Altona', 'Winterhude', 'Harvestehude'];
  final List<String> dateTime = <String>['08.10.2020 15:30', '11.10.2020 19:30', '18.10.2020 18:00'];
  final List<String> photo = <String>['student.png', 'oldie.png', 'girl.png'];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 220,
          margin: EdgeInsets.only(bottom: 10, left: 15, right: 15),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end:
              Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('${entries[index].toUpperCase()}', style: TextStyle(color: Colors.white, fontSize: 28, fontFamily: "raleway", fontWeight: FontWeight.bold) ),
                  Image.asset('images/${photo[index]}'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  Icon(Icons.add_location_alt_outlined, color: Color(0xFF293133), size: 33),
                  SizedBox(width: 20),
                  Text('${locations[index]}', style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: "raleway", fontWeight: FontWeight.bold) )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  Icon(Icons.calendar_today_outlined, color: Colors.white, size: 33),
                  SizedBox(width: 20),
                  Text('${dateTime[index]}', style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: "raleway", fontWeight: FontWeight.bold))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.chat, color: Colors.red, size:35),
                  SizedBox(width: 20),
                ],
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}

class BottomNavigationBarLayout extends State {

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Color(0xFF293133),
      unselectedItemColor: Colors.white,
      selectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          label: 'Suche',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add),
          label: 'New',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          label: 'Chat',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_outlined),
          label: 'Account',
        ),
      ],
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF00C2CB),
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 100,
          elevation: 0.0,
          title: Image.asset('images/LogoMeetMeThere.PNG',
              width: 200,
              height: 100 ),
          backgroundColor: Color(0xFF00C2CB),
        ),
        body:
        ChangableWidget(),
        bottomNavigationBar:
        BottomNavBar(),
      ),
    );
  }
}

