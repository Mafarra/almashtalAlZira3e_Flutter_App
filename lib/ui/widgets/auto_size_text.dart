// import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyAutoText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 360.0, height: 640.0, allowFontScaling: true);
    return Center(
      child: SizedBox(
        width: 200.0,
        height: 140.0,
        child: AutoSizeText(
          ' will be automatically resized to fit in two lines.',
          style: TextStyle(fontSize: 30.0),
          maxLines: 3,
          maxFontSize: 40,
          minFontSize: 12,
        ),
      ),
    );
  }
}
