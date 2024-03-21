import 'package:flutter/material.dart';

class Custom_Text extends StatelessWidget {
  final String text;
  final double fontsize;
  final FontWeight fontWeight;
  final Color color;
  const Custom_Text(
      {super.key,
      required this.text,
      required this.fontsize,
      required this.fontWeight,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontsize,
          fontFamily: "raleway",
          fontWeight: fontWeight,
          color: color),
    );
  }
}