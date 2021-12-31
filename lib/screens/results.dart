import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:flutter/material.dart';
import '../components/reusable_card.dart';
import 'calculator_brain.dart';

const titleText = TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold);
const largeButtonText = TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);
const resultText = TextStyle(color: Color(0xFF24D876), fontSize: 22.0, fontWeight: FontWeight.bold);
const BMIText = TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold);
const bodyText = TextStyle(fontSize: 22.0);
class Results extends StatelessWidget {
  Results(this.bmiResult, this.resultsText, this.bmiInterpretation);

  final String bmiResult;
  final String resultsText;
  final String bmiInterpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text('Your Result', style: titleText),
            )
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(Color(0xFF1D1E33), Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(resultsText, style: resultText),
                  Text(bmiResult, style: BMIText),
                  Container(
                    padding: EdgeInsets.all(15.0),
                    child: Text(bmiInterpretation, 
                      style: bodyText,
                      textAlign: TextAlign.center,
                    )
                  )
                ] 
              ),
            ),
          ),
          GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, '/');
              },
              child:Container(
                child: Center(
                  child:Text('RECALCULATE', style: largeButtonText),
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
    );
  }
}