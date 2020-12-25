import 'package:almashtal_alzira3e/utilities/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyShareAndCallButtons extends StatelessWidget {
  IconData icon;
  Color btnColor;
  Color iconColor;
  double raduis;
  MyShareAndCallButtons(
      {this.icon, this.btnColor, this.iconColor, this.raduis});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 360.0, height: 640.0, allowFontScaling: true);
    return Container(
      child: CircleAvatar(
        radius: raduis.w,
        backgroundColor: btnColor,
        child: Icon(
          icon,
          color: iconColor,
          size: 18,
        ),
        //  color: iconColor,
      ),
    );
  }
}
