import 'package:almashtal_alzira3e/ui/widgets/CustomButton.dart';
import 'package:almashtal_alzira3e/ui/widgets/CustomTextField.dart';
import 'package:almashtal_alzira3e/ui/widgets/CustomTitleRow.dart';
import 'package:almashtal_alzira3e/ui/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Customers extends StatelessWidget {
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 360.0, height: 640.0, allowFontScaling: true);
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SafeArea(
                child: CustomAppBar(
                  title: 'تسجيل العملاء',
                  icon: Icon(Icons.arrow_back),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              CustomRow(
                svgPath: 'assets/pic/users.svg',
                text1: 'تسجيل العملاء ',
                text2: 'يمكنك تسجيل العميل هنا',
              ),
              SizedBox(
                height: 90.h,
              ),
              Container(
                width: 310.w,
                height: 180.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MyTextField(
                      lable: 'اسم المستخدم',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    MyTextField(
                      lable: 'كلمة المرور',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    MyTextField(
                      lable: 'البريد الإلكتروني',
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    MyTextField(lable: 'رقم الهاتف'),
                  ],
                ),
              ),
              SizedBox(
                height: 60.h,
              ),
              MyButton(buttonName: 'تسجيل'),
            ],
          ),
        ],
      ),
    );
  }
}
