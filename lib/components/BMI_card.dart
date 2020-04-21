import 'package:flutter/material.dart';

class BMICard extends StatelessWidget {
  BMICard({@required this.colour, this.childWidget, this.onPress});
  final Color colour;
  final Widget childWidget;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: childWidget,
      ),
    );
  }
}
