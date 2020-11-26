import 'dart:math';
import 'dart:ui';

import 'package:biggerNumberGame/pages/createPage.dart';
import 'package:flutter/material.dart';

import 'pages/eventPage.dart';
import 'pages/Home.dart';
import 'pages/searchPage.dart';
import 'pages/createPage.dart';
import 'pages/chatPage.dart';
import 'pages/AccountPage.dart';

main() {
  runApp(MyApp());
}

class BottomNavBar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BottomNavigationBarLayout();
  }
}

class BottomNavigationBarLayout extends State {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    ChangableWidget(),
    Search(),
    CreateEvent(),
    Chat(),
    ManageAccount(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF293133),
      appBar: AppBar(
        centerTitle: true,
        shadowColor: Colors.black,
        toolbarHeight: 100,
        elevation: 0.8,
        title: Image.asset('images/LogoTürkis.png', height: 90),
        backgroundColor: Color(0xFF293133),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Color(0xFF00C2CB),
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home, size: 35),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 35),
              label: 'Suche',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add, size: 35),
              label: 'New',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat, size: 35),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined, size: 35),
              label: 'Account',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBar(),
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/eventPage': (context) => EventPage(),
      },
    );
  }
}
