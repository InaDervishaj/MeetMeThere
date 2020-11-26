import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../entries.dart';

class EventPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFF293133),
      appBar: AppBar(
        centerTitle: true,
        toolbarHeight: 90,
        elevation: 0.0,
        title: Text('${entries[number].toUpperCase()}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontFamily: "raleway",
              fontWeight: FontWeight.bold,
            )),
        backgroundColor: Color(0xFF00C2CB),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                height: 300,
                margin: EdgeInsets.only(left: 23, right: 23),
                padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset('images/StandortRot.png'),
                        SizedBox(width: 30),
                        Text('${locations[number]}',
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
                        Image.asset('images/calendar.png'),
                        SizedBox(width: 30),
                        Text('${dateTime[number]}',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: "raleway",
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.35,
                          margin: EdgeInsets.only(right: 15),
                          child: OutlineButton(
                            borderSide: BorderSide(color: Colors.white),
                            onPressed: () {
                              print('Received message');
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  '+',
                                  style: TextStyle(
                                      fontSize: 30,
                                      color: Colors.white,
                                      fontFamily: "raleway",
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 13),
                                Text('Follow',
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.white,
                                        fontFamily: "raleway",
                                        fontWeight: FontWeight.bold))
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.35,
                          margin: EdgeInsets.only(left: 15),
                          child: OutlineButton(
                            borderSide: BorderSide(color: Colors.white),
                            onPressed: () {
                              print(MediaQuery.of(context).size);
                            },
                            child: Row(
                              children: [
                                Image.asset('images/Message.png', scale: 26),
                                SizedBox(width: 9),
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
              Container(
                margin:
                    EdgeInsets.only(top: 5, bottom: 10, left: 23, right: 30),
                padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('About me',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 33,
                                fontFamily: "raleway",
                                fontWeight: FontWeight.bold)),
                        Image.asset(
                          'images/${photo[number]}',
                          scale: 1.4,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          width: 299,
                          child: Text('${description[number]}',
                              softWrap: true,
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontFamily: "raleway",
                                  fontWeight: FontWeight.bold,
                                  height: 1.7)),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
