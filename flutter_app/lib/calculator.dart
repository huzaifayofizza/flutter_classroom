import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget
{
  State<StatefulWidget> createState() => MyAppState();
}

class MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My First App',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,),
        body: Container(
          child: const Column(children: [
            //Text Feild 1
            TextField(
              decoration: InputDecoration(
                labelText: 'Height in m',
                icon: Icon(Icons.trending_up),
              ),
            ),
            SizedBox(height: 15),
              //Text Feild 2
             const TextField(
              decoration: InputDecoration(
                labelText: 'Weight in kg',
                icon: Icon(Icons.line_weight),
              ),
            ),

            //button
            SizedBox(height: 20),
            ElevatedButton(onPressed: (){}, style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              )
            ),
            child: Text('Calculate' , style: TextStyle(fontSize: 18))),
          ]),
      ),
      )
    );
  }

}
