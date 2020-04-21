import 'dart:math';

class Calculator {
  Calculator({this.height, this.weight});
  int height;
  int weight;
  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getBMIResult() {
    if (_bmi > 25) {
      return 'Over weight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Under Weight';
    }
  }

  String getSuggestion() {
    if (_bmi > 25) {
      return 'You need to loose your weight';
    } else if (_bmi > 18.5) {
      return 'You are fit';
    } else {
      return 'You need to gain your weight';
    }
  }
}
