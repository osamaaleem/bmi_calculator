import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

class ResultPage extends StatelessWidget {

  ResultPage(this.result, {super.key});
  final String result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(top: 20.0, right: 20.0, left: 20.0),
            child: const Text(
              "Your Result",
              style: kResultTitleStyle,
            ),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(clr: kActiveCardColor, cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(result, style: kResultTextStyle,)
              ],
            ),),

          )
        ],
      ),
    );
  }
}
