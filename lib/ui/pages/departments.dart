import 'package:almashtal_alzira3e/ui/pages/slider.dart';
import 'package:almashtal_alzira3e/ui/widgets/customRowDepaetment.dart';
import 'package:almashtal_alzira3e/ui/widgets/custom_app_bar.dart';
import 'package:almashtal_alzira3e/utilities/Colors.dart';
import 'package:almashtal_alzira3e/utilities/pics_list.dart';
import 'package:almashtal_alzira3e/utilities/testStyle.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Depatrments extends StatefulWidget {
  @override
  _DepatrmentsState createState() => _DepatrmentsState();
}

class _DepatrmentsState extends State<Depatrments> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 360.0, height: 640.0, allowFontScaling: true);
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: CustomAppBar(
        title: 'الأقسام',
        icon: Icon(Icons.arrow_back),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(child: SliderPage()),
          SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.only(right: 18.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('الأقسام الرئسية', style: blackTextSize18),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              //depName picpath
              itemBuilder: (context, index) {
                return CustomRowDep(
                  depName: depPics[index].depName,
                  depPic: depPics[index].photoPath,
                );
              },
              itemCount: depPics.length,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: mainGreenColor,
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
