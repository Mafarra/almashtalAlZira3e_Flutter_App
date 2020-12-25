import 'package:almashtal_alzira3e/utilities/testStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTextField extends StatefulWidget {
  String lable;
  double textFieldHeight;
  MyTextField({this.lable});
  @override
  _MyTextFeildState createState() => _MyTextFeildState();
}

class _MyTextFeildState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 360.0, height: 640.0, allowFontScaling: true);
    return Container(
      width: 310.w,
      height: //40.h,
          widget.textFieldHeight == null ? 40.h : widget.textFieldHeight.h,
      child: TextField(
        // maxLines: 12,
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(right: 20.w),
          hintText: widget.lable, alignLabelWithHint: true,
          hintStyle: smallblack38Text,
          fillColor: Colors.white,

          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.blue,
            ),
          ),
          //focusColor: Colors.blue,
        ),
        textDirection: TextDirection.rtl,
      ),
    );
  }
}
