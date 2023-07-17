import 'package:flutter/material.dart';
import 'package:task_one/constant/app_colors.dart';
import 'package:task_one/constant/app_text_styles.dart';

import '../widgets/bottom_bar.dart';
import '../widgets/options_tile.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: AppColor.background,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text("My Account"),
      ),
      bottomNavigationBar: bottomNavigationBar(),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.03),
              child: ListTile(
                contentPadding: EdgeInsets.symmetric(
                    horizontal: size.width * 0.04,
                    vertical: size.height * 0.015),
                tileColor: AppColor.white,
                leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: AppColor.background,
                  child: Icon(
                    Icons.person_2_outlined,
                    size: size.width * 0.08,
                    color: AppColor.black,
                  ),
                ),
                title: Text(
                  "My Name",
                  style: AppTextStyle.text16(size, false),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: AppColor.black,
                  size: size.width * 0.05,
                ),
              ),
            ),
            // Container(
            //   color: Colors.white,
            //   padding: EdgeInsets.symmetric(horizontal: size.width * 0.03),
            //   margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
            //   height: size.height * 0.1,
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       Row(
            //         children: [
            //           CircleAvatar(
            //             radius: 30,
            //             backgroundColor: AppColor.background,
            //             child: Icon(
            //               Icons.person_2_outlined,
            //               size: size.width * 0.08,
            //               color: AppColor.black,
            //             ),
            //           ),
            //           const Text("My Name"),
            //         ],
            //       ),
            //       const Icon(Icons.arrow_forward_ios)
            //     ],
            //   ),
            // )

            const OptionTile(
              title: "Help Center",
              withBigMargin: true,
            ),
            const OptionTile(
              title: "Address Book",
            ),
            const OptionTile(
              title: "My Order",
            ),
            const OptionTile(
              title: "Payments",
            ),
            const OptionTile(
              title: "About Us",
            ),

            SizedBox(
              height: size.height * 0.06,
            ),
            Container(
              height: size.height * 0.065,
              decoration:
                  BoxDecoration(color: AppColor.white, boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 1),
                  blurRadius: 1,
                  color: Colors.grey,
                ),
              ]),
              child: Align(
                child: Text(
                  "Logout",
                  style: AppTextStyle.text14(size, true).copyWith(
                    color: Colors.blue,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.038,
            ),

            const Divider(
              thickness: 1,
            ),
            const Spacer(),
            Divider(
              thickness: 2,
              color: AppColor.white,
            ),
          ],
        ),
      ),
    );
  }
}
