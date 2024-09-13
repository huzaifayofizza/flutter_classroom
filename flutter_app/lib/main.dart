import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
          backgroundColor: Colors.black,
        ),
        body: Center(
            child: Text('Welcome to huzaifa app Plateform',
            textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.normal))),

         // backgroundColor: Colors.red,
         // foregroundColor: Colors.pink,
         // splashColor: Colors.purple,
         // hoverColor: Colors.orange,
         // elevation: 12,
         // higlightElevation: 50,
         // hoverElevation: 50,

         floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.add_a_photo_outlined),
         backgroundColor: Colors.black,foregroundColor: Colors.white,),
         floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterFloat,          
      ),
    );
  }
}
