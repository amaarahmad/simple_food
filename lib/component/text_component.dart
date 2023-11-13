import 'package:flutter/material.dart';
import 'package:simple_food_app/color/color.dart';
class TextComponent extends StatelessWidget {
  String title;
  TextComponent({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,style: TextStyle(fontSize: 16,color: guideColor,fontWeight: FontWeight.w400),
    );
  }
}
