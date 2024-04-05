import 'package:calculactor/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Calculator',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          centerTitle: true,
        ),
        body: const CalcButton(),
      ),
    );
  }
}
