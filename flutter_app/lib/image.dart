import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: GoogleFonts.aBeeZeeTextTheme(),
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              'My First App',
              style: GoogleFonts.aBeeZee(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.black,
          ),
          body: Column(
            children: [
              Image.asset('../assets/image/image.png',
                  fit: BoxFit.cover, alignment: Alignment.topCenter,
                  errorBuilder: (BuildContext context , Object error , StackTrace? trace )
                  {
                    return Text(" not such found image.... please try again...");
                  },
                  ),
              Image.network(
                'https://images.pexels.com/photos/27496315/pexels-photo-27496315/free-photo-of-mother-working-on-loom-and-daughter-sitting-behind.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                fit: BoxFit.cover,
                alignment: Alignment.topCenter,
              )
            ],
          ),
        ));
  }
}
