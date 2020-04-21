import 'package:bmi_calculator/components/BMI_card.dart';
import 'package:bmi_calculator/constant.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.result, this.bmi, this.suggestion});
  final String result;
  final String bmi;
  final String suggestion;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Text(
              'Your Result',
              style: kTextBigStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: BMICard(
              colour: kCardColor,
              childWidget: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result.toUpperCase(),
                    style: kTextLabelStyle,
                  ),
                  Text(
                    bmi,
                    style: kTextLargeStyle,
                  ),
                  Text(
                    suggestion,
                    style: kTextLabelStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Container(
            height: kActionBtnHeight,
            width: double.infinity,
            color: kActionBtnColor,
            child: FlatButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'RECALCULATE',
                style: kButtonTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
