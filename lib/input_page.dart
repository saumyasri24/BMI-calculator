import 'package:flutter/material.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color malecardColor=inactiveCardColour;
  Color femalecardColor =inactiveCardColour;
  //1-male, 2-female
  void updateColor(int gender){
    if(gender==1){
      if(malecardColor==inactiveCardColour){
        malecardColor=activeCardColour;
        femalecardColor=inactiveCardColour;
      }
        
      else
        malecardColor=inactiveCardColour;
    }
    else{
      if(femalecardColor==inactiveCardColour){
        femalecardColor=activeCardColour;
        malecardColor=inactiveCardColour;
      }
        
      else
        femalecardColor=inactiveCardColour;
    }
  }

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
                        updateColor(1);
                      });
                    },
                    child:ReusableCard(malecardColor, 
                          cardChild(FontAwesomeIcons.mars, 'MALE')),
                  ),
              ),
              Expanded(
                child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(2);
                      });
                    },
                  child: ReusableCard(femalecardColor, 
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



