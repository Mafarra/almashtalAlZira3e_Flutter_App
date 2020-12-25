import 'package:almashtal_alzira3e/ui/widgets/custom_app_bar.dart';
import 'package:almashtal_alzira3e/ui/widgets/shareAndCallCircledButton.dart';
import 'package:almashtal_alzira3e/utilities/Colors.dart';
import 'package:almashtal_alzira3e/utilities/testStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../main.dart';

class TermsAndConditions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //height is 640.0 and width is 360.0
    ScreenUtil.init(context,
        width: 360.0, height: 640.0, allowFontScaling: true);
    return Scaffold(
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomAppBar(
            title: 'الشروط والاحكام',
            icon: Icon(Icons.arrow_back),
          ),
          Container(
            child: SvgPicture.asset(
              'lib/assets/pic/logo.svg',
              alignment: Alignment.center,
              width: 150.w,
              height: 250.h,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Container(
            height: 200.h,
            width: MediaQuery.of(context).size.width * 0.8.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'الشروط والاحكام',
                  style: smallGreenText,
                ),
                Text(
                  '''هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة،لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق''',
                  textAlign: TextAlign.right,
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
