// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  String? q1;
  String? q2;
  String? q3;
  String? q4;
  String? q5;
  int count1 = 0;
  int count2 = 0;
  int count3 = 0;
  int count4 = 0;
  int count5 = 0;
  int totalSum = 0;

  @override
  Widget build(BuildContext context) {
    totalSum = count1 + count2 + count3 + count4 + count5;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'My Quiz App',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        // SingleChildScrollView()
        body: SingleChildScrollView(
          child : Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 210, 241, 255),
                  Color.fromARGB(255, 11, 48, 78),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    Center(
                      child: Text(
                        'Choose Your Correct Answer!',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 10),
                    // Question 1
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'What is the capital of pakistan..?',
                              style: TextStyle(fontSize: 16),
                            ),
                            RadioListTile(
                                title: Text("Islamabad"),
                                value: "Islamabad",
                                groupValue: q1,
                                onChanged: (value) {
                                  setState(() {
                                    q1 = value;
                                    count1 = 1;
                                  });
                                }),
                            RadioListTile(
                                title: Text("Karachi"),
                                value: "Karachi",
                                groupValue: q1,
                                onChanged: (value) {
                                  setState(() {
                                    q1 = value;
                                    count1 = 0;
                                  });
                                }),
                            RadioListTile(
                                title: Text("Lahore"),
                                value: "Lahore",
                                groupValue: q1,
                                onChanged: (value) {
                                  setState(() {
                                    q1 = value;
                                    count1 = 0;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                    // Question 2
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'What is the capital of U.S.A?',
                              style: TextStyle(fontSize: 16),
                            ),
                            RadioListTile(
                                title: Text("New York"),
                                value: "New York",
                                groupValue: q2,
                                onChanged: (value) {
                                  setState(() {
                                    q2 = value;
                                    count2 = 0;
                                  });
                                }),
                            RadioListTile(
                                title: Text("Washington"),
                                value: "Washington",
                                groupValue: q2,
                                onChanged: (value) {
                                  setState(() {
                                    q2 = value;
                                    count2 = 1;
                                  });
                                }),
                            RadioListTile(
                                title: Text("Malayasia"),
                                value: "Malayasia",
                                groupValue: q2,
                                onChanged: (value) {
                                  setState(() {
                                    q2 = value;
                                    count2 = 0;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                    // question 3
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'What is the capital of India..?',
                              style: TextStyle(fontSize: 16),
                            ),
                            RadioListTile(
                                title: Text("Goa"),
                                value: "Goa",
                                groupValue: q3,
                                onChanged: (value) {
                                  setState(() {
                                    q3 = value;
                                    count3 = 0;
                                  });
                                }),
                            RadioListTile(
                                title: Text("Mumbai"),
                                value: "Mumbai",
                                groupValue: q3,
                                onChanged: (value) {
                                  setState(() {
                                    q3 = value;
                                    count3 = 0;
                                  });
                                }),
                            RadioListTile(
                                title: Text("New Delhi"),
                                value: "New Delhi",
                                groupValue: q3,
                                onChanged: (value) {
                                  setState(() {
                                    q3 = value;
                                    count3 = 1;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                    // question 4
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'What is the capital of germany..?',
                              style: TextStyle(fontSize: 16),
                            ),
                            RadioListTile(
                                title: Text("Frankfurt"),
                                value: "Frankfurt",
                                groupValue: q4,
                                onChanged: (value) {
                                  setState(() {
                                    q4 = value;
                                    count4 = 0;
                                  });
                                }),
                            RadioListTile(
                                title: Text("Munich"),
                                value: "Munich",
                                groupValue: q4,
                                onChanged: (value) {
                                  setState(() {
                                    q4 = value;
                                    count4 = 0;
                                  });
                                }),
                            RadioListTile(
                                title: Text("Berlin"),
                                value: "Berlin",
                                groupValue: q4,
                                onChanged: (value) {
                                  setState(() {
                                    q4 = value;
                                    count4 = 1;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                    // question 5
                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'What is the capital of canada..?',
                              style: TextStyle(fontSize: 16),
                            ),
                            RadioListTile(
                                title: Text("Ottawa"),
                                value: "Ottawa",
                                groupValue: q5,
                                onChanged: (value) {
                                  setState(() {
                                    q5 = value;
                                    count5 = 1;
                                  });
                                }),
                            RadioListTile(
                                title: Text("Toronto"),
                                value: "Toronto",
                                groupValue: q5,
                                onChanged: (value) {
                                  setState(() {
                                    q5 = value;
                                    count5 = 0;
                                  });
                                }),
                            RadioListTile(
                                title: Text("Montreal"),
                                value: "Montreal",
                                groupValue: q5,
                                onChanged: (value) {
                                  setState(() {
                                    q5 = value;
                                    count5 = 0;
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                    // total Sum Display
                    SizedBox(height: 20),
                    Center(
                      child: Text(
                        'Your have Answered $totalSum out of 5 Questions.',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
        ),
      ),
    );
  }
}
