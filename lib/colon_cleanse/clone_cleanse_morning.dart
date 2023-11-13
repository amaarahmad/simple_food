import 'package:flutter/material.dart';
import 'package:simple_food_app/component/bottle_widget.dart';

import '../app_assets/app_assets.dart';
import '../color/color.dart';
import '../component/icon_widget.dart';
class ColonCleanseMorning extends StatefulWidget {
  const ColonCleanseMorning({Key? key}) : super(key: key);

  @override
  State<ColonCleanseMorning> createState() => _ColonCleanseMorningState();
}

class _ColonCleanseMorningState extends State<ColonCleanseMorning> {
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
                TopIconWidgetTwo(imageurl: 'assets/with.png', color: lightGreen),],
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
                  Text('Day 1 - Morning',style: TextStyle(fontSize: 30,color: Colors.white),),
                  SizedBox(
                    height: 34,
                  ),
                  WidgetBottle(title: 'Latero Flora', imagUrl: AppAssets.latero, dropper: AppAssets.laterodropper,text: '2 Capsules',)

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
