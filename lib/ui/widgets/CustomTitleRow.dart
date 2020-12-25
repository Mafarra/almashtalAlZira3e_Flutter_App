import 'package:almashtal_alzira3e/utilities/testStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomRow extends StatelessWidget {
  String svgPath, text1, text2;
  CustomRow({this.svgPath, this.text1, this.text2});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 360.0, height: 640.0, allowFontScaling: true);
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Text(text2),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    width: 20.w,
                    height: 20.h,
                    child: SvgPicture.asset(svgPath),
                  ),
                ],
              ),
              Text(
                text2,
                // 'يمكنك تسجيل العميل هنا',
                style: smallblack38Text,
              ),
            ],
          ),
          SizedBox(
            width: 30.w,
          ),
        ],
      ),
    );
  }
}
