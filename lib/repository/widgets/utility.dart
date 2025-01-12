import 'package:flutter/material.dart';

Widget reusableText(String title,
    {Color color = Colors.black,
      String? fontFamily,
      TextAlign? textAlign,
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.normal,
    int maxLines = 1,
    height = 1.5}) {
  return Text(
    title,
    overflow: TextOverflow.ellipsis,
    maxLines: maxLines,
    textAlign: textAlign,
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
  static customTextField({required TextEditingController controller}){
    return Container(
      height: 40,
      width: 360,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          border: Border.all(
              color: Color(0XFFC5C5C5)
          )
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            hintText: "Search 'ice-cream'",
            prefixIcon: Image.asset("assets/images/search.png"),
            suffixIcon: Image.asset("assets/images/mic.png"),
            border: InputBorder.none
        ),
      ),
    );
  }
// Button
  static customButton(VoidCallback callback){
    return Container(
      height: 18,
      width: 30,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
              color: Color(0XFF27AF34)
          ),
          borderRadius: BorderRadius.circular(4)
      ),
      child: Center(child: Text("Add",style: TextStyle(fontSize: 8,color: Color(0XFF27AF34)),),),
    );
  }

  }
