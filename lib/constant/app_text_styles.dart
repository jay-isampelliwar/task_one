import 'package:flutter/material.dart';
import 'package:task_one/constant/app_colors.dart';

class AppTextStyle {
  static TextStyle text14(Size size, bool bold) {
    return TextStyle(
      fontSize: size.width * 0.045,
      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
    );
  }

  static TextStyle text16(Size size, bool bold) {
    return TextStyle(
      fontSize: size.width * 0.05,
      color: AppColor.black,
      fontWeight: bold ? FontWeight.bold : FontWeight.normal,
    );
  }
}
