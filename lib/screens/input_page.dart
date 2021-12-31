
import 'package:flutter/material.dart';
import '../components/icon_content.dart';
import '../components/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'calculator_brain.dart';
import 'results.dart';

const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF111328);
const numberText = TextStyle(fontSize: 50.0, fontWeight: FontWeight.w900);
const largeButtonText = TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);
int height=180;
int weight = 60;
int age = 30;

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
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
            child: ReusableCard(malecardColor, 
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Text(
                  'HEIGHT',
                  style: labelTextStyle
                ),
                Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.baseline,
                  // textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                  Text(
                    height.toString(),
                    style: numberText
                  ),
                  Text(
                    'cm',
                    style: labelTextStyle
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color(0xFF8B8E98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15.0
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30.0
                      ),
                    ),
                    child:Slider(
                    value: height.toDouble(),
                    min: 120.0,
                    max: 220.0,
                    onChanged: (double newValue){
                      setState(() {
                        height = newValue.round();
                        });
                      },
                     ),
                    ),
                   ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(activeCardColour, Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'WEIGHT',
                        style: labelTextStyle,
                      ),
                      Text(
                        weight.toString(),
                        style: numberText
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: (){
                            setState(() {
                              weight++;
                            });
                          }
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPressed: (){
                            setState(() {
                              weight--;
                            });
                          }
                        ),

                      ],
                     )
                    ],
                    )
                  ),
              ),
                Expanded(
                  child: ReusableCard(activeCardColour, Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'AGE',
                        style: labelTextStyle,
                      ),
                      Text(
                        age.toString(),
                        style: numberText
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                        RoundIconButton(
                          icon: FontAwesomeIcons.plus,
                          onPressed: (){
                            setState(() {
                              age++;
                            });
                          }
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        RoundIconButton(
                          icon: FontAwesomeIcons.minus,
                          onPressed: (){
                            setState(() {
                              age--;
                            });
                          }
                        ),

                      ],
                     )
                    ],
                    )
                   ),
                  ),
                ]
              ), 
            ),
            GestureDetector(
              onTap: (){
                CalculatorBrain calc = CalculatorBrain(height, weight);
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Results(calc.calculateBMI(), calc.result(), calc.getInterpretation())),
                );
              },
              child:Container(
                child: Center(
                  child:Text('CALCULATE', style: largeButtonText),
                ),
                color: Color(0xFFEB1555),
                margin: EdgeInsets.only(top:10.0),
                width: double.infinity,
                height: 80.0,
                padding: EdgeInsets.only(bottom: 20.0),
            )
          ),
         ],
        ),
       ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({this.icon, this.onPressed});
  final IconData icon;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(icon),
      onPressed: onPressed,
      elevation: 0.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),

    );
  }
}

