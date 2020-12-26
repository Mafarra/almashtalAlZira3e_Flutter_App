import 'package:almashtal_alzira3e/utilities/testStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../main.dart';

class SplachPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //height is 640.0 and width is 360.0
    ScreenUtil.init(context,
        width: 360.0, height: 640.0, allowFontScaling: true);
    // Future.delayed(Duration(seconds: 100)).then((value) {
    //   Get.off(MyHomePage());
    // });
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 110.h),
            child: Center(
              child: Container(
                child: SvgPicture.asset(
                  'assets/pic/logo.svg',
                  alignment: Alignment.center,
                  width: 150.w,
                  height: 250.h,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 40.h,
          ),
          Expanded(
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {
                      //    Get.off(AdsPage());
                    },
                    child: Text(
                      'تخطي',
                      style: smallGreenText,
                    ),
                  ),
                  SizedBox(
                    width: 80.w,
                  ),
                  GestureDetector(
                    onTap: () {
                      //    Get.off(Signin());
                    },
                    child: Text(
                      'تسجيل',
                      style: smallGreenText,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
