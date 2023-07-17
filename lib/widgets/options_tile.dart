import 'package:flutter/material.dart';

import '../constant/app_colors.dart';
import '../constant/app_text_styles.dart';

class OptionTile extends StatelessWidget {
  const OptionTile(
      {super.key, required this.title, this.withBigMargin = false});
  final String title;
  final bool withBigMargin;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Container(
      color: AppColor.white,
      height: size.height * 0.065,
      margin: withBigMargin
          ? EdgeInsets.symmetric(vertical: size.height * 0.03)
          : EdgeInsets.only(bottom: size.height * 0.008),
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyle.text16(size, false),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: AppColor.black,
            size: size.width * 0.05,
          ),
        ],
      ),
    );
  }
}
