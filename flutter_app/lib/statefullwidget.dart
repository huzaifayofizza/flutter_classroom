import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget
{
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp>
{
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
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,),
        body: Center(
            child: Text('$count',
            textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.normal))),
         floatingActionButton: FloatingActionButton(onPressed: inc, child: Icon(Icons.add_rounded),
         backgroundColor: Colors.black,foregroundColor: Colors.white,),        
         
      ),
    );
  }
  void inc()
  {
    setState(() {
      count += 1;
    });
  }
}
