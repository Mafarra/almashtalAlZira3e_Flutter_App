import 'package:almashtal_alzira3e/ui/widgets/CustomButton.dart';
import 'package:almashtal_alzira3e/ui/widgets/CustomTextField.dart';
import 'package:almashtal_alzira3e/ui/widgets/custom_app_bar.dart';
import 'package:almashtal_alzira3e/ui/widgets/smallWidgets.dart';
import 'package:almashtal_alzira3e/utilities/testStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

class CallUs extends StatelessWidget {
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 360.0, height: 640.0, allowFontScaling: true);
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              SafeArea(
                child: CustomAppBar(
                  title: 'اتصل بنا',
                  icon: Icon(Icons.arrow_back),
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Column(
                // mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MyTextField(
                    lable: 'البريد الإلكتروني',
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  MyTextField(
                    lable: 'رقم الهاتف',
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  MyTextField(
                    lable: 'عنوان الشكوى',
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.all(15.w),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 15.0.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'محتوى النص',
                            style: blackTextSize18,
                            textAlign: TextAlign.right,
                          )
                        ],
                      ),
                    ),
                    SmallWidgets().buildMultipleTextField(),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              MyButton(buttonName: 'ارسل'),
            ],
          ),
        ],
      ),
    );
  }
}
