import 'package:flutter/material.dart';

import 'constants.dart';



class IconContent extends StatelessWidget {
  IconContent({required this.label, required this.icn});

  final String label;
  final Icon icn;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        icn,
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
