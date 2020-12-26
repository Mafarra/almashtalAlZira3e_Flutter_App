import 'package:almashtal_alzira3e/ui/widgets/CustomButton.dart';
import 'package:almashtal_alzira3e/ui/widgets/CustomTextField.dart';
import 'package:almashtal_alzira3e/ui/widgets/CustomTitleRow.dart';
import 'package:almashtal_alzira3e/ui/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Stores extends StatelessWidget {
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 360.0, height: 640.0, allowFontScaling: true);
    return Scaffold(
      body: ListView(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SafeArea(
                  child: CustomAppBar(
                    title: 'تسجيل المتاجر',
                    icon: Icon(Icons.arrow_back),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomRow(
                  svgPath: 'assets/pic/shop.svg',
                  text1: 'تسجيل المتاجر ',
                  text2: 'يمكنك تسجيل متجرك هنا',
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 310.w,
                  height: 180.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyTextField(
                        lable: 'اسم الشركة',
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
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
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('حدد موقع متجرك'),
                    SizedBox(
                      width: 13.w,
                    ),
                    SvgPicture.asset('assets/pic/location.svg'),
                    SizedBox(
                      width: 30.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: 310.w,
                  height: 120.h,
                  child: Column(
                    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyTextField(lable: 'رقم الهاتف'),
                      SizedBox(
                        height: 10.h,
                      ),
                      MyTextField(lable: 'شعار المتجر'),
                      SizedBox(
                        height: 10.h,
                      ),
                      MyTextField(lable: 'نشاط الشركة'),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                MyButton(buttonName: 'تسجيل'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
