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
      body: Column(children: <Widget>[
       // Row 1 
        Expanded(
          flex: 4,
          child: Container(color: Colors.blueGrey, alignment: Alignment.center, child: Text('1 Row',
           style: TextStyle(fontSize: 18),),),
           ),
         // Row 2
         Expanded(
          flex: 4,
         child: Row(children: [
          Expanded(
            flex: 5,
            child: Container(color: Colors.cyan, alignment: Alignment.center, child: Text('2 Row 1 column',
           style: TextStyle(fontSize: 18),),),
          ),

          Expanded(
            flex: 5,
            child: Column(children: [
              Expanded(
                flex: 2,
                child: Container(color: Colors.amber, alignment: Alignment.center, child: Text('2 Row 2 column',
           style: TextStyle(fontSize: 18),),),
              ),

               Expanded(
                flex: 5,
                child: Container(color: Colors.deepPurple, alignment: Alignment.center, child: Text('2 Row 3 column',
           style: TextStyle(fontSize: 18),),),
              ),
            ],),
          ),

         ],),
        ),
          // Row 3
            Expanded(
          flex: 4,
          child: Container(color: Colors.brown, alignment: Alignment.center, child: Text('3 Row',
           style: TextStyle(fontSize: 18),),),
        ),
        
      ],),
        ),
    );
  }
}