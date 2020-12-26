import 'package:almashtal_alzira3e/ui/widgets/custom_app_bar.dart';
import 'package:almashtal_alzira3e/utilities/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 360.0, height: 640.0, allowFontScaling: true);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Stack(
            children: [
              //Image(image : NetworkImage('https://i.pinimg.com/originals/5b/cb/9b/5bcb9bf96d1b6777b6fa13066282fb0e.gif'))
              CustomAppBar(
                icon: Icon(
                  Icons.arrow_back,
                ),
                title: '',
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 50.h),
                child: Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(13.w),
                        topRight: Radius.circular(13.w)),
                    child: Container(
                      width: 320.w,
                      height: 450.h,
                      child: Image(
                        image: NetworkImage(
                            'https://i.pinimg.com/originals/5b/cb/9b/5bcb9bf96d1b6777b6fa13066282fb0e.gif'),
                        alignment: Alignment.center,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.0.w),
                child: Container(
                  width: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/pic/whatsappIcon.svg',
                        width: 25.w,
                        height: 25.h,
                      ),
                      SvgPicture.asset(
                        'assets/pic/phone-receiverIcon.svg',
                        width: 25.w,
                        height: 25.h,
                      ),
                      SvgPicture.asset(
                        'assets/pic/worldIcon.svg',
                        width: 25.w,
                        height: 25.h,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 60.w,
                height: 40.h,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: mainGreenColor,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        bottomLeft: Radius.circular(40)),
                  ),
                  child: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
