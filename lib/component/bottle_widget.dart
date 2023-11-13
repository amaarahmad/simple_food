import 'dart:ui';
import 'package:flutter/material.dart';

import '../color/color.dart';
class WidgetBottle extends StatelessWidget {
  String title;
  String imagUrl;
  String dropper;
  Color? tickColor;
  Color? bgColor;
  String? text;
  WidgetBottle({Key? key,required this.title,required this.imagUrl,this.tickColor,this.bgColor,required this.dropper,this.text }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      width: 352,
      decoration: BoxDecoration(
          color: bgColor??Colors.white,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(imagUrl),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title,style: TextStyle(fontSize: 20),),
              Row(
                children: [
                  Text(text??'5 ml',style: TextStyle(fontSize: 14),),
                  Image.asset(dropper),

                ],
              ),

            ],
          ),
          CircleAvatar(
            backgroundColor: tickColor??lightGreen,
            child: Icon(Icons.check,color: Colors.black,),
          )
        ],
      ),
    );
  }
}