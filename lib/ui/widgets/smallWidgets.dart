import 'package:flutter/material.dart';

class SmallWidgets {
  buildMultipleTextField() {
    return Container(
      child: TextField(
        textAlign: TextAlign.right,
        decoration: InputDecoration(
          // labelText: 'أكتب هنا محتوى الشكوى',
          hintText: '...أكتب هنا',
          alignLabelWithHint: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        maxLines: 5,
      ),
    );
  }
}
