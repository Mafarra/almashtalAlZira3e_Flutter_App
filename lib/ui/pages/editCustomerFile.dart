import 'package:almashtal_alzira3e/ui/widgets/CustomButton.dart';
import 'package:almashtal_alzira3e/ui/widgets/CustomTextField.dart';
import 'package:almashtal_alzira3e/ui/widgets/CustomTitleRow.dart';
import 'package:almashtal_alzira3e/ui/widgets/custom_app_bar.dart';
import 'package:almashtal_alzira3e/utilities/Colors.dart';
import 'package:almashtal_alzira3e/utilities/testStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EditCustomerProfile extends StatelessWidget {
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
                    title: 'تعديل ملف التاجر',
                    icon: Icon(Icons.arrow_back),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'تعديل ملف التاجر',
                      style: blackTextSize18,
                    ),
                    SizedBox(
                      width: 45.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 310.w,
                  height: 180.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      MyTextField(
                        lable: 'شركة الامانة',
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      MyTextField(
                        lable: 'معتصم محمد',
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      MyTextField(
                        lable: '*******',
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      MyTextField(
                        lable: 'example@gmail.com',
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('الاحمدي , الكويت', style: blackTextSize18),
                    SizedBox(
                      width: 60.w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 310.w,
                  height: 200.h,
                  child: Column(
                    children: [
                      MyTextField(lable: '0394 22 34'),
                      SizedBox(
                        height: 10.h,
                      ),
                      MyTextField(lable: 'example.jpeg'),
                      SizedBox(
                        height: 10.h,
                      ),
                      MyTextField(lable: ' مشتل نايف'),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('نوعية الخدمات التي تقدمها الشركة'),
                          SizedBox(width: 23.w),
                        ],
                      ),
                      MyTextField(lable: 'نشاط تجاري'),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MySmallButton(
                      buttonName: 'تراجع',
                    ),
                    SizedBox(width: 60.w),
                    MySmallButton(
                      buttonName: 'حفظ',
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
