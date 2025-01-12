import 'package:flutter/material.dart';

Widget reusableText(String title,
    {Color color = Colors.black,
      String? fontFamily,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    int maxLines = 1,
    height = 1.5}) {
  return Text(
    title,
    overflow: TextOverflow.ellipsis,
    maxLines: maxLines,
    style: TextStyle(
        height: 1.5,
        fontWeight: fontWeight,
        fontSize: fontSize,
        color: color,
        letterSpacing: 1,
        fontFamily: fontFamily),
  );
}

class GlobalWidgets {
  static customText(String title,
      {Color color = Colors.black,
        String? fontFamily = 'Poppins-Regular',
      double fontSize = 13,
      FontWeight fontWeight = FontWeight.normal,
      int maxLines = 1}) {
    return Text(
      title,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: TextStyle(
          height: 1.5,
          fontWeight: fontWeight,
          fontSize: fontSize,
          color: color,
          letterSpacing: 1,
          fontFamily: fontFamily),
    );
  }
}
