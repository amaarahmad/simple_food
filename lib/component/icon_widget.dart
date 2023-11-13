import 'package:flutter/material.dart';

import '../color/color.dart';
class TopIconWidget extends StatelessWidget {
  Color color;
  IconData iconData;
   TopIconWidget({Key? key,required this.iconData,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 21),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12)
      ),
      child:  Icon(iconData,color: Colors.white,size: 30,),
    );
  }
}


class TopIconWidgetTwo extends StatelessWidget {
  Color color;
  String imageurl;
   TopIconWidgetTwo({Key? key,required this.imageurl,required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 21),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(12)
      ),
      child:  Image.asset(imageurl),
    );
  }
}
