import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';

const titleText = TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold);
const largeButtonText = TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold);
const resultText = TextStyle(color: Color(0xFF24D876), fontSize: 22.0, fontWeight: FontWeight.bold);
const BMIText = TextStyle(fontSize: 100.0, fontWeight: FontWeight.bold);
const bodyText = TextStyle(fontSize: 22.0);
class Results extends StatelessWidget {

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
              child: Text('Your Result', style: titleText),
            )
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(Color(0xFF1D1E33), Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Overweight', style: resultText),
                  Text('26.7', style: BMIText),
                  Text("You have higher BMI, you should eat less", 
                  style: bodyText,
                  textAlign: TextAlign.center,)
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