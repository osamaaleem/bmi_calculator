import 'dart:math';

class CalculatorBrain {


  String calculate(int h, int w){
    double hd = h / 100;

    hd = pow(hd, 2).toDouble();

    double bmi = w/hd;

    return bmi.toStringAsFixed(1);
  }
}