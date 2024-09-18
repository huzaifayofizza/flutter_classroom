import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  double? _result;
  String _statusMessage = '';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'BMI Calculator',
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
        ),
        body: Container(
          // padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightGreen, Colors.lightBlue],
              begin: Alignment.topCenter, // Start gradient from top-left
              end: Alignment.bottomCenter, // End gradient at bottom-right
            ),
          ),
          child: Column(
            children: [
              // Text Field 1
              SizedBox(height: 15),
              TextField(
                controller: _heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Height in meters (e.g., 1.75)',
                  icon: Icon(Icons.trending_up),
                ),
              ),
              SizedBox(height: 15),
              // Text Field 2
              TextField(
                controller: _weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Weight in kg',
                  icon: Icon(Icons.line_weight),
                ),
              ),
              // Button
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: calculateBMI,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.black,
                ),
                child: Text('Calculate', style: TextStyle(fontSize: 18)),
              ),
              SizedBox(height: 15),
              // BMI Result
              if (_result != null)
                Text("BMI is: ${_result?.toStringAsFixed(2)}",
                    style: TextStyle(fontSize: 18)),
              // Status Message
              if (_statusMessage.isNotEmpty)
                Text(
                  _statusMessage,
                  style: TextStyle(fontSize: 18, color: Colors.red),
                ),
            ],
          ),
        ),
      ),
    );
  }

  void calculateBMI() {
    String heightInput = _heightController.text.trim();
    String weightInput = _weightController.text.trim();

    if (heightInput.isEmpty || weightInput.isEmpty) {
      setState(() {
        _statusMessage = 'Please enter both height and weight';
        _result = null;
      });
      return;
    }

    double height = double.parse(heightInput);
    double weight = double.parse(weightInput);

    // BMI Formula: weight (kg) / [height (m)]^2
    double heightSquare = height * height;
    double result = weight / heightSquare;
    _result = result;

    // BMI status
    if (result < 18.5) {
      _statusMessage = 'Underweight';
    } else if (result >= 18.5 && result < 24.9) {
      _statusMessage = 'Normal weight';
    } else if (result >= 25 && result < 29.9) {
      _statusMessage = 'Overweight';
    } else {
      _statusMessage = 'Obese';
    }

    setState(() {
      // Update UI after calculation
    });
  }
}
