import 'package:flutter/material.dart';

const cardIconTextColor = Color(0xFF8D8E98);
const labelTextStyle = TextStyle(fontSize: 18.0, color: cardIconTextColor);

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
          style: labelTextStyle,
        ),
      ],
    );
  }
}
