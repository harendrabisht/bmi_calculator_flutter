import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class RoundFlatButton extends StatelessWidget {
  RoundFlatButton({this.onPressed, this.icon});
  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 4,
      constraints: BoxConstraints.tightFor(
        height: 56,
        width: 56,
      ),
      shape: CircleBorder(),
      fillColor: kInActiveCardColor,
      child: Icon(icon),
    );
  }
}
