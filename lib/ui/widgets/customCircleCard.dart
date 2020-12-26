import 'package:almashtal_alzira3e/utilities/testStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyCircleCard extends StatelessWidget {
  String picPath, title;
  MyCircleCard({this.picPath, this.title});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 360.0, height: 640.0, allowFontScaling: true);
    return Card(
      elevation: 2.0,
      shape: CircleBorder(),
      child: Container(
        width: 120.w,
        height: 120.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              picPath,
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              title,
              style: blackTextSize18,
            ),
          ],
        ),
      ),
    );
  }
}
