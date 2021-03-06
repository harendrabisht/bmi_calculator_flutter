import 'package:flutter/material.dart';

import 'screens/Input_Page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(
          0xFF0B102A,
        ),
        scaffoldBackgroundColor: Color(0xFF141A3C),
      ),
      home: InputPage(),
    );
  }
}
