import 'package:flutter/material.dart';

class ImgPath {
  static customImage({
    required String img,
    double? width,
    double? height,
  }) {
    try {
      return Image.asset(
        "assets/images/$img.png",
        width: width,
        height: height,
      );
    } catch (e) {
      try {
        return Image.asset(
          "assets/images/$img.jpg",
          width: width,
          height: height,
        );
      } catch (e) {
        try {
          return Image.asset(
            "assets/images/$img.svg",
            width: width,
            height: height,
          );
        } catch (e) {
          return Image.asset(
            "assets/images/placeholder.png",
            width: width,
            height: height,
          );
        }
      }
    }
  }
}
