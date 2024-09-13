import 'dart:ui';

import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: AppBar(title: Text('Row and column widget',
      style: TextStyle(color: Colors.white , fontSize: 18 , fontWeight: FontWeight.bold),),backgroundColor: Colors.black,),
    body: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Text 1',style: TextStyle(fontSize: 22),),
        Text('Text 1',style: TextStyle(fontSize: 22),),
        Text('Text 1',style: TextStyle(fontSize: 22),),

      ],
    ),
        ),
    );
  }
}