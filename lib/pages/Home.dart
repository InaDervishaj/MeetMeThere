
import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../entries.dart';

class ChangableWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return BiggerNumberGameState();
  }
}

class BiggerNumberGameState extends State {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return GestureDetector(
          onTap: () {
            number = index;
            Navigator.pushNamed(
              context,
              '/eventPage',
            );
          },
          child: Container(
            height: 255,
            margin: EdgeInsets.only(bottom: 0, left: 15, right: 15, top: 10),
            padding: EdgeInsets.fromLTRB(20, 5, 15, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('${entries[index].toUpperCase()}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: "raleway",
                            fontWeight: FontWeight.bold)),
                    Image.asset('images/${photo[index]}', scale: 2.5),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 20),
                    Image.asset('images/StandortTürkis.png'),
                    SizedBox(width: 20),
                    Text('${locations[index]}',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "raleway",
                            fontWeight: FontWeight.bold))
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 20),
                      Image.asset('images/calendar.png'),
                      SizedBox(width: 20),
                      Text('${dateTime[index]}',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontFamily: "raleway",
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      width: 150,
                      child: OutlineButton(
                        onPressed: () {
                          print('Received message');
                        },
                        borderSide: BorderSide(color: Colors.white),
                        child: Row(
                          children: [
                            Image.asset('images/Message.png', scale: 18),
                            SizedBox(width: 10),
                            Text(
                              'Message',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontFamily: "raleway",
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => Container(
        width: 800,
        child: const Divider(
          color: Colors.white,
          indent: 20,
          endIndent: 20,
        ),
      ),
    );
  }
}
