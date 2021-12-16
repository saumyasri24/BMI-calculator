import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
              Expanded(
                  child: ReusableCard(Color(0xFF1D1E33)),
              ),
              Expanded(
                  child: ReusableCard(Color(0xFF1D1E33)),
              ),
            ],
            ), 
          ),
          Expanded(
            child: ReusableCard(Color(0xFF1D1E33)),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(Color(0xFF1D1E33)),
              ),
              Expanded(
                  child: ReusableCard(Color(0xFF1D1E33)),
              ),
            ]
            ), 
          ),
         ],
        ),
       ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  
  final Color color;
  ReusableCard(@required this.color);
  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.all(15.0),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(10.0),
    color: color,
      ),
    );
  }
}