import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';

class CalcButton extends StatefulWidget {
  const CalcButton({super.key});

  @override
  CalcButtonState createState() => CalcButtonState();
}

class CalcButtonState extends State<CalcButton> {
  double? _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SimpleCalculator(
        value: _currentValue!,
        hideExpression: false,
        hideSurroundingBorder: true,
        autofocus: true,
        onChanged: (key, value, expression) {
          setState(() {
            _currentValue = value ?? 0;
          });
          if (kDebugMode) {
            print('$key\t$value\t$expression');
          }
        },
        onTappedDisplay: (value, details) {
          if (kDebugMode) {
            print('$value\t${details.globalPosition}');
          }
        },
        theme: const CalculatorThemeData(
          borderColor: Colors.black54,
          borderWidth: 0,
          displayColor: Colors.white,
          displayStyle: TextStyle(fontSize: 64, color: Colors.black54),
          expressionColor: Colors.white24,
          expressionStyle: TextStyle(fontSize: 20, color: Colors.black),
          operatorColor: Colors.white,
          operatorStyle: TextStyle(fontSize: 24, color: Colors.black),
          commandColor: Colors.white,
          commandStyle: TextStyle(fontSize: 30, color: Colors.black),
          numColor: Colors.white,
          numStyle: TextStyle(fontSize: 36, color: Colors.black87),
        ),
      ),
    );
  }
}
