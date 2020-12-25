import 'package:almashtal_alzira3e/ui/widgets/customCIrcleCard.dart';
import 'package:almashtal_alzira3e/ui/widgets/custom_app_bar.dart';
import 'package:almashtal_alzira3e/utilities/testStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

class SigninPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //height is 640.0 and width is 360.0
    ScreenUtil.init(context,
        width: 360.0, height: 640.0, allowFontScaling: true);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomAppBar(
            title: 'التسجيل',
            icon: Icon(Icons.arrow_back),
          ),
          SizedBox(
            height: 30.h,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('مستخدم جديد'),
                    Text(
                      'يمكنك تسجيل عضوية مجانا',
                      style: smallblack38Text,
                    ),
                  ],
                ),
                SizedBox(
                  width: 30.w,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50.h,
          ),
          GestureDetector(
            onTap: () {
              //ToDo: Go TO Stores.dart
            },
            child: MyCircleCard(
              picPath: 'lib/assets/pic/shop.svg',
              title: 'المتاجر',
            ),
          ),
          SizedBox(
            height: 60.h,
          ),
          GestureDetector(
            onTap: () {
              //ToDo: Go TO Customers.dart
            },
            child: MyCircleCard(
              picPath: 'lib/assets/pic/users.svg',
              title: 'العملاء',
            ),
          ),
        ],
      ),
    );
  }
}
