import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'My First App',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.black,
          ),
          body: ListView(
            
            // scrollDirection: Axis.vertical,
            // padding: EdgeInsets.all(12.0),
            // physics: NeverScrollableScrollPhysics(),
            // reverse: true,

            children: [
              Container(
                height: 80,
                color: Colors.lightBlue,
              ),
              Container(
                height: 80,
                color: Colors.lightGreen,
              ),
              Container(
                height: 80,
                color: Colors.purpleAccent,
              ),
              Container(
                height: 80,
                color: Colors.redAccent,
              ),
              Container(
                height: 80,
                color: Colors.yellow,
              ),
              Container(
                height: 80,
                color: Colors.pink,
              ),
              Container(
                height: 80,
                color: Colors.lightBlue,
              ),
              Container(
                height: 80,
                color: Colors.lightGreen,
              ),
              Container(
                height: 80,
                color: Colors.purpleAccent,
              ),
              Container(
                height: 80,
                color: Colors.redAccent,
              ),
              Container(
                height: 80,
                color: Colors.yellow,
              ),
              Container(
                height: 80,
                color: Colors.pink,
              ),
            ],
          )),
    );
  }
}
