import 'package:flutter/material.dart';

import '../app_assets/app_assets.dart';
import '../color/color.dart';
import '../component/bottle_widget.dart';
import '../component/icon_widget.dart';
class KidneyCleanseAfternoon extends StatefulWidget {
  const KidneyCleanseAfternoon({Key? key}) : super(key: key);

  @override
  State<KidneyCleanseAfternoon> createState() => _KidneyCleanseAfternoonState();
}

class _KidneyCleanseAfternoonState extends State<KidneyCleanseAfternoon> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,

        body: Column(
          children: [
            Row(
              children: [
                TopIconWidget(iconData: Icons.person, color: bgColor),
                TopIconWidgetTwo(imageurl: AppAssets.kidney, color: lightGreen),],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.80,
              decoration: BoxDecoration(
                  color: bgColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Column(

                  children: [
                    SizedBox(
                      height: 52,
                    ),
                    Text('Day 1 - Afternoon',style: TextStyle(fontSize: 30,color: Colors.white),),
                    SizedBox(
                      height: 34,
                    ),
                    WidgetBottle(title: 'Kidney Health', imagUrl: AppAssets.kidneyBottle, dropper: AppAssets.dropper,bgColor: lightGreen,tickColor: Colors.white,),
                    SizedBox(
                      height: 10,
                    ),
                    WidgetBottle(title: 'Turmeric', imagUrl: AppAssets.termericBottle,dropper: AppAssets.yellowDrop,),

                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}

