import 'package:almashtal_alzira3e/utilities/Colors.dart';
import 'package:almashtal_alzira3e/utilities/testStyle.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Widget icon;
  //final Widget leading;
  CustomAppBar({
    @required this.title,
    this.icon,
  });
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 2,
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: mainGreenColor,
      title: Text(
        '$title',
        style: titleText,
      ),
      leading: icon,
    );
  }

  @override
  Size get preferredSize => AppBar().preferredSize;
}
