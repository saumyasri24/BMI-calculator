
import 'package:flutter/material.dart';
import 'input_page.dart';
import 'results.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          colorScheme: ColorScheme.light(primary: Color(0xFF0A0E21),secondary: Colors.purple),
          scaffoldBackgroundColor: Color(0xFF0A0E21),
          textTheme: TextTheme(
            bodyText2: TextStyle(
              color: Colors.white,
            ),
          ),
      ),
      home: InputPage(),
      routes: {
        '/results': (context) => Results(),
      },
    );
  }
}


