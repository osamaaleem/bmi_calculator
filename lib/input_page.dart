import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';

import 'icon_content.dart';

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  kGender? selectedGender;
  int height = 180;
  int weight = 60;
  int age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0E21),
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = kGender.male;
                      });
                    },
                    child: ReusableCard(
                      clr: selectedGender == kGender.male
                          ? kActiveCardColor
                          : kInActiveCardColor,
                      cardChild: IconContent(
                        label: "MALE",
                        icn: const Icon(FontAwesomeIcons.mars, size: 80.0),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedGender = kGender.female;
                      });
                    },
                    child: ReusableCard(
                      clr: selectedGender == kGender.female
                          ? kActiveCardColor
                          : kInActiveCardColor,
                      cardChild: IconContent(
                          label: "FEMALE",
                          icn: const Icon(FontAwesomeIcons.venus, size: 80.0)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    clr: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Height",
                          style: kLabelTextStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              height.toString(),
                              style: kNumberStyle,
                            ),
                            const SizedBox(
                              width: 2.0,
                            ),
                            const Text(
                              "cm",
                              style: kLabelTextStyle,
                            )
                          ],
                        ),
                        SliderTheme(
                          data: const SliderThemeData(
                              thumbShape: RoundSliderThumbShape(
                                  enabledThumbRadius: 15.0),
                              overlayShape:
                                  RoundSliderOverlayShape(overlayRadius: 30.0),
                              thumbColor: kSliderControlColor,
                              activeTrackColor: kActiveSliderColor,
                              inactiveTrackColor: kInActiveSliderColor,
                              overlayColor: kSliderOverlayColor),
                          child: Slider(
                            value: height.toDouble(),
                            onChanged: (double newHeight) {
                              setState(() {
                                height = newHeight.round();
                              });
                            },
                            min: kSliderMin,
                            max: kSliderMax,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    clr: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "WEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                              shape: const CircleBorder(),
                              fillColor: kRawMaterialBtnFillClr,
                              constraints: const BoxConstraints.tightFor(height: 56.0, width: 56.0),
                              elevation: 6.0,
                              disabledElevation: 6.0,
                              child: const Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 15.0,),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              shape: const CircleBorder(),
                              fillColor: kRawMaterialBtnFillClr,
                              constraints: const BoxConstraints.tightFor(height: 56.0, width: 56.0),
                              elevation: 6.0,
                              disabledElevation: 6.0,
                              child: const Icon(
                                FontAwesomeIcons.plus,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    clr: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "AGE",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                              shape: const CircleBorder(),
                              fillColor: kRawMaterialBtnFillClr,
                              constraints: const BoxConstraints.tightFor(height: 56.0, width: 56.0),
                              elevation: 6.0,
                              disabledElevation: 6.0,
                              child: const Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(width: 15.0,),
                            RawMaterialButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              shape: const CircleBorder(),
                              fillColor: kRawMaterialBtnFillClr,
                              constraints: const BoxConstraints.tightFor(height: 56.0, width: 56.0),
                              elevation: 6.0,
                              disabledElevation: 6.0,
                              child: const Icon(
                                FontAwesomeIcons.minus,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: kBottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: kBottomContainerHeight,
          )
        ],
      ),
    );
  }
}

/*class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, required this.icn, required this.pressed});
  final IconData icn;
  final Function pressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: ,
      shape: const CircleBorder(),
      fillColor: kRawMaterialBtnFillClr,
      constraints: const BoxConstraints.tightFor(height: 56.0, width: 56.0),
      elevation: 6.0,
      disabledElevation: 6.0,
      child: Icon(
        icn,
        color: Colors.white,
      ),
    );
  }
}*/

/*class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onPressed});

  final IconData icon;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}*/


