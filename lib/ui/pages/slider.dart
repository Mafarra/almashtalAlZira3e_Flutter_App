import 'dart:async';

import 'package:almashtal_alzira3e/utilities/pics_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SliderPage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<SliderPage> {
  final controller = PageController(viewportFraction: 1.0, initialPage: 0);
  int index = 1;
  // final currentIndex =
  //     PageController(initialPage: 0, keepPage: false, viewportFraction: 1.0);
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 360.0, height: 640.0, allowFontScaling: true);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: SafeArea(
        child: Stack(
          children: [
            SizedBox(
              height: 180.h,
              //width: 360.w,
              child: PageView(
                controller: controller,
                onPageChanged: (value) {
                  index = value;
                  // controller.jumpToPage(index);
                  setState(() {});
                },
                children: List.generate(
                  pics.length,
                  (_) => Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    margin:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 0.h),
                    child: Image.asset(
                      'lib/assets/pic/mashtal${index + 1}.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              height: 180.h,
              child: Padding(
                padding: const EdgeInsets.only(
                  bottom: 8.0,
                ),
                child: SmoothPageIndicator(
                  controller: controller,
                  count: pics.length,
                  onDotClicked: (index) {
                    this.index = index;
                    controller.jumpToPage(index);
                    setState(() {});
                  },
                  effect: WormEffect(
                      dotHeight: 7.h, dotWidth: 7.w, dotColor: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
