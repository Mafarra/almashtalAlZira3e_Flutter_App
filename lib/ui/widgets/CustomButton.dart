import 'package:almashtal_alzira3e/utilities/Colors.dart';
import 'package:almashtal_alzira3e/utilities/testStyle.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyButton extends StatelessWidget {
  String buttonName;
  MyButton({this.buttonName});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 360.0, height: 640.0, allowFontScaling: true);
    return Container(
      width: 320.w,
      height: 40,
      child: RaisedButton(
        clipBehavior: Clip.hardEdge,
        color: mainGreenColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(22.0),
            side: BorderSide(color: mainGreenColor)),
        onPressed: () {},
        child: Text(buttonName, style: smallWhiteText),
      ),
    );
  }
}

class MySmallButton extends StatelessWidget {
  String buttonName;
  Color color;
  MySmallButton({this.buttonName});
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 360.0, height: 640.0, allowFontScaling: true);
    return Container(
      width: 120.w,
      height: 38.h,
      child: RaisedButton(
        color:
            buttonName == 'تراجع' ? color = greybutton : color = mainGreenColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22.0),
        ),
        onPressed: () {},
        child: Text(buttonName, style: smallWhiteText),
      ),
    );
  }
}
