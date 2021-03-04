import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color backgroundColor =Colors.white;
  Color textColor = Colors.black;
  void changeColor() {
    Random random=new Random();
   setState(() {
     backgroundColor=Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
     textColor=Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
   });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap:changeColor,
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Text(
            'Hey there! It is your future Flutter Developer :D\n (Tap anywhere)',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900,color:textColor),textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
