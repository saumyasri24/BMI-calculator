import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const activeCardColor = 0xFF1D1E33;

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
                  child: ReusableCard(Color(activeCardColor), 
                  cardChild(FontAwesomeIcons.mars, 'MALE')),
              ),
              Expanded(
                  child: ReusableCard(Color(activeCardColor), 
                  cardChild(FontAwesomeIcons.venus, 'FEMALE')),
              ),
            ],
            ), 
          ),
          Expanded(
            child: ReusableCard(Color(activeCardColor), cardChild(FontAwesomeIcons.mars, 'MALE')),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(Color(activeCardColor), cardChild(FontAwesomeIcons.mars, 'MALE')),
              ),
              Expanded(
                  child: ReusableCard(Color(activeCardColor), cardChild(FontAwesomeIcons.mars, 'MALE')),
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



