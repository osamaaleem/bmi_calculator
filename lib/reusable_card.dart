import 'package:flutter/material.dart';
import 'constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.cardChild, required this.clr});

  final Color clr;
  final Widget cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(10.0), color: clr),
      child: cardChild,
    );
  }
}