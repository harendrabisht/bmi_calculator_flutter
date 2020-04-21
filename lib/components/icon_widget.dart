import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatelessWidget {
  IconWidget({this.iconName, this.title});
  final IconData iconName;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconName,
          size: 80,
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          title,
          style: kTextLabelStyle,
        )
      ],
    );
  }
}
