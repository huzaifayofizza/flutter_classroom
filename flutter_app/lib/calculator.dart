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
              color: Colors.white,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        body: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.tealAccent.shade100, Colors.blueAccent.shade200],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 20),
              // Height Input Field
              _buildTextField(
                controller: _heightController,
                label: 'Height in meters (e.g., 1.75)',
                icon: Icons.height,
              ),
              SizedBox(height: 20),
              // Weight Input Field
              _buildTextField(
                controller: _weightController,
                label: 'Weight in kg',
                icon: Icons.fitness_center,
              ),
              SizedBox(height: 30),
              // Calculate Button
              ElevatedButton(
                onPressed: calculateBMI,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Colors.blueGrey,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
                child: const Text(
                  'Calculate BMI',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 25),
              // BMI Result and Status Message
              if (_result != null)
                Column(
                  children: [
                    Text(
                      "BMI: ${_result?.toStringAsFixed(2)}",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      _statusMessage,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: _getStatusColor(),
                      ),
                    ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
  }) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.blueGrey),
        filled: true,
        fillColor: Colors.white.withOpacity(0.8),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
      style: TextStyle(fontSize: 18),
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

    double result = weight / (height * height);
    _result = result;

    if (result < 18.5) {
      _statusMessage = 'Underweight';
    } else if (result >= 18.5 && result < 24.9) {
      _statusMessage = 'Normal weight';
    } else if (result >= 25 && result < 29.9) {
      _statusMessage = 'Overweight';
    } else {
      _statusMessage = 'Obese';
    }

    setState(() {});
  }

  Color _getStatusColor() {
    if (_result != null) {
      if (_result! < 18.5) {
        return Colors.blueAccent;
      } else if (_result! < 24.9) {
        return Colors.green;
      } else if (_result! < 29.9) {
        return Colors.orange;
      } else {
        return Colors.red;
      }
    }
    return Colors.black;
  }
}
