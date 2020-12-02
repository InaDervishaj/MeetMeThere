import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widget/info_card.dart';
const url = 'http://thinkdiff.net';
const email = 'Max.Mustermann@hsba.de';
const phone = '+49 1520 717 7827';
const location = 'Hamburg, Germany';

class ManageAccount extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ManageAccountState();
  }
}

class ManageAccountState extends State {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Color(0xFF293133),
      body: 
      ListView(
        children: <Widget>[
        Container(
        margin: EdgeInsets.only(left: 30, right: 15, ),
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                (
                  Image.asset('images/girl.png')
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('   Maria Muster',
                        style: TextStyle(
                            fontFamily: "Pacifico",
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                    Text(
                      '  Studentin',
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "raleway",
                          color: Colors.teal[50],
                          letterSpacing: 2.5,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 300,
                    margin: EdgeInsets.only(top: 20, left:20),
                    child: Row(
                      children: [
                        Text('About me',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 33,
                            fontFamily: "raleway",
                            fontWeight: FontWeight.bold)),
                        Container(
                          
                          margin: EdgeInsets.only( left:110),
                          child: 
                            Icon(
                              Icons.edit,
                              color: Colors.white,
                              size: 30,
                            ),
                        )
                      ]
                    )
                  )
                ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20, left:25),
                    width: 290,
                    child: Text('Hi, ich bin die Luisa. Ich bin 17 Jahre alt und gehe in Hamburg aufs Gymnasium. Nächstes Jahr mache ich mein Abitur und dann würde ich gerne anfagen im Ausland zu studieren. Freue mich über neue Kontakte.',
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
                        SizedBox(
              height: 5,
              width: 200,
              child: Divider(
                color: Colors.teal.shade700,
              ),
            ),
            InfoCard(
              text: phone,
              icon: Icons.phone,
            ),
            InfoCard(
              text: email,
              icon: Icons.email,
            ),
            InfoCard(
              text: url,
              icon: Icons.web,
            ),
            InfoCard(
              text: location,
              icon: Icons.location_city,
              onPressed: null,
            ),
          ],
        ),
      ),
    ]
    ));
  }
}