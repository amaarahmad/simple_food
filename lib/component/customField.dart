import 'package:flutter/material.dart';

import '../color/color.dart';
class CustomField extends StatelessWidget {
  String title;
  double width;
   CustomField({Key? key,required this.width,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: width,
      decoration: BoxDecoration(
        color: textfieldBg,
        borderRadius: BorderRadius.circular(10)

      ),

      child: TextFormField(
        decoration: InputDecoration(
          hintText: title,
          helperStyle: TextStyle(fontFamily: 'Poppins'),
          disabledBorder: InputBorder.none,
          border: InputBorder.none
        ),




      ),
    );
  }
}
