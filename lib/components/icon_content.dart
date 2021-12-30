import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
            color: Color(0xFF8D8E98),
            fontSize: 18.0
            );

class cardChild extends StatelessWidget {
  cardChild(this.icon, this.label);
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label, 
          style: labelTextStyle,
        )
      ],
    );
  }
}