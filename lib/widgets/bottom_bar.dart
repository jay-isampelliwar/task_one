import 'package:flutter/material.dart';
import 'package:task_one/constant/app_colors.dart';

Widget bottomNavigationBar() {
  return BottomNavigationBar(elevation: 0, items: [
    BottomNavigationBarItem(
        backgroundColor: AppColor.background,
        icon: Icon(
          Icons.home,
          color: AppColor.black,
        ),
        label: ""),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.delete_outline_outlined,
          color: AppColor.black,
        ),
        label: ""),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.person_2_outlined,
          color: AppColor.black,
        ),
        label: ""),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.settings_backup_restore_rounded,
          color: AppColor.black,
        ),
        label: ""),
  ]);
}
