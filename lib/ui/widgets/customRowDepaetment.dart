import 'package:almashtal_alzira3e/utilities/testStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRowDep extends StatelessWidget {
  String depPic, depName;
  CustomRowDep({this.depName, this.depPic});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 360.0, height: 640.0, allowFontScaling: true);
    return Padding(
      padding: EdgeInsets.all(8.0.h),
      child: Container(
        color: Colors.white,
        height: 120.h,
        width: 300.w,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(left: 40.w, right: 20.w),
                child: Container(
                    width: 100.w,
                    height: 27.h,
                    child: Text(
                      depName,
                      style: blackTextSize18,
                    )),
              ),
            ),
            Image.asset(
              depPic,
              width: 180.w,
              height: 100.h,
              fit: BoxFit.cover,
            ),
          ],
        ),
      ),
    );
  }
}
