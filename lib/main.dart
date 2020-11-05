import 'dart:math';

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

createRandom(int) {
  Random random = new Random();
  return int = random.nextInt(1000);
}

checkResult1(int1, int2) {
  if (int1 > int2) {
    return true;
  }
  return false;
}

checkResult2(int1, int2) {
  if (int2 > int1) {
    return true;
  }
  return false;
}

showMessage(correctAnswer) {
  if (correctAnswer) {
    return "Richtig";
  }
  return "Falsch";
}

setPoints(correctAnswer, points) {
  if (correctAnswer) {
    return points+1;
  }
  return points-1;
}

class BiggerNumberGameState extends State {
  var textForLabel = 'Choose the bigger number';
  var result = "";
  bool correctAnswer;
  int points = 0;


  int randomNumber1 = createRandom(int);
  int randomNumber2 = createRandom(int);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
            child: Text(
              textForLabel,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                correctAnswer = checkResult1(randomNumber1, randomNumber2);
                result = showMessage(correctAnswer);
                points = setPoints(correctAnswer, points);
              });
            },
            child: Text("$randomNumber1"),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                correctAnswer = checkResult2(randomNumber1, randomNumber2);
                result = showMessage(correctAnswer);
                points = setPoints(correctAnswer, points);
              });
            },
            child: Text("$randomNumber2"),
          ),
          Container(
            child: Text(
              result,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            child: Text(
              "$points",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bigger Number Game'),
        ),
        body:
        ChangableWidget(),
      ),
    );
  }
}

