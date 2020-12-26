import 'package:almashtal_alzira3e/ui/pages/Customers.dart';
import 'package:almashtal_alzira3e/ui/pages/aboutUsPage.dart';
import 'package:almashtal_alzira3e/ui/pages/callUs.dart';
import 'package:almashtal_alzira3e/ui/pages/departments.dart';
import 'package:almashtal_alzira3e/ui/pages/editCustomerFile.dart';
import 'package:almashtal_alzira3e/ui/pages/slider.dart';
import 'package:almashtal_alzira3e/ui/pages/terms_and_conditions.dart';
import 'package:almashtal_alzira3e/ui/widgets/customRowDepaetment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 360.0, height: 640.0, allowFontScaling: true);
    return Scaffold(
      body: Center(
        child: Center(child: SizedBox(child: Container())),
      ),
    );
  }
}
