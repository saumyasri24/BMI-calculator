import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);

enum Gender{
  male, female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecardColor=inactiveCardColour;
  Color femalecardColor =inactiveCardColour;

  Gender selectedGender = null;
  

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
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedGender= Gender.male;
                      });
                    },
                    child:ReusableCard(selectedGender==Gender.male ? activeCardColour: inactiveCardColour, 
                          cardChild(FontAwesomeIcons.mars, 'MALE')),
                  ),
              ),
              Expanded(
                child: GestureDetector(
                    onTap: (){
                      setState(() {
                        selectedGender= Gender.female;
                      });
                    },
                  child: ReusableCard(selectedGender==Gender.female ? activeCardColour: inactiveCardColour, 
                  cardChild(FontAwesomeIcons.venus, 'FEMALE')),
                ),
              ),
            ],
            ), 
          ),
          Expanded(
            child: ReusableCard(malecardColor, cardChild(FontAwesomeIcons.mars, 'MALE')),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(malecardColor, cardChild(FontAwesomeIcons.mars, 'MALE')),
              ),
              Expanded(
                  child: ReusableCard(malecardColor, cardChild(FontAwesomeIcons.mars, 'MALE')),
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



