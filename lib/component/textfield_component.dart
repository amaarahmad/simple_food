import 'package:flutter/material.dart';
import 'package:simple_food_app/color/color.dart';
class TextFieldComponent extends StatelessWidget {
  IconData iconData;
  IconData? suffix;
  String title;
   TextFieldComponent({Key? key,required this.title,required this.iconData,this.suffix}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 350,
      child: TextField(

        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: Icon(iconData),
          suffixIcon: Icon(suffix),

          hintText: title,
          hintStyle: TextStyle(fontSize: 12,color: Color(0xffADA4A5),fontWeight: FontWeight.w400),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)
          )

        ),

      ),
    );
  }
}
