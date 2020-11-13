import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:biggerNumberGame/pages/pages.dart' as pages;

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

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 170,
          color: Colors.indigo,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('${entries[index]}'),
                  Icon(Icons.account_circle_outlined),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.add_location_alt_outlined),
                  Text('${locations[index]}')
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.calendar_today_outlined),
                  Text('${dateTime[index]}')
                ],
              )
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
    return Scaffold(
      backgroundColor: Colors.black38,

      appBar: AppBar(),
      body: Center(
        child: Row(
          children: [
            Container(
              child: FlatButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  icon: Icon(Icons.home),
                  label: Text('Home'),
              ),
            ),
            Container(
              child: FlatButton.icon(
                onPressed: null,
                icon: Icon(Icons.search),
                label: Text('Suche'),
              ),
            ),
            Container(
              child: FlatButton.icon(
                onPressed: () {
                  Navigator.pushNamed(context, '/newEvent');
                },
                icon: Icon(Icons.add),
                label: Text('New'),
              ),
            )
          ],
        ),

      ),
    );

    /*return BottomNavigationBar(
      backgroundColor: Colors.black38,
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
    );*/
  }
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/home': (context) => pages.HomePage(),
        '/account': (context) => pages.AccountPage(),
        '/newEvent': (context) => pages.NewEventPage(),
      },
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(
          centerTitle: true,
          toolbarHeight: 100,
          title: Image.asset('images/LogoMeetMeThere.PNG',
              width: 200,
              height: 100,
              fit:BoxFit.fill ),
          backgroundColor: Colors.cyan,
        ),
        body:
        ChangableWidget(),
        bottomNavigationBar:
        BottomNavBar(),
      ),
    );
  }

}

