import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Login Page',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Color.fromARGB(255, 90, 36, 240),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.phone_android,
                size: 110,
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                'Welcome Back!',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'We Missed You! Login to continue',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Email',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    hintText: 'Password',
                    fillColor: Colors.white,
                    filled: true,
                  ),
                ),
              ),

              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:  16.0),
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  decoration:  BoxDecoration(
                    color: Colors.deepPurple,
                    border: Border.all(color : Colors.white),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(child: Text('Sign In' ,style:  TextStyle(color:  Colors.white, fontSize: 18))),
                ),
              ),

            //TEXT
            SizedBox(height : 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Text('Not a members?' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18)),
                Text('Register Now' , style: TextStyle(fontWeight: FontWeight.bold , color: Colors.deepPurple ,fontSize: 18)),
              ],
            )
            ], ),
        ),
      ),
    );
  }
}
