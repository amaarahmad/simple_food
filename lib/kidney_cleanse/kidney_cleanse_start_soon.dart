import 'package:flutter/material.dart';

import '../app_assets/app_assets.dart';
import '../color/color.dart';
import '../component/icon_widget.dart';
class KidneyCleanseStartSoon extends StatefulWidget {
  const KidneyCleanseStartSoon({Key? key}) : super(key: key);

  @override
  State<KidneyCleanseStartSoon> createState() => _KidneyCleanseStartSoonState();
}

class _KidneyCleanseStartSoonState extends State<KidneyCleanseStartSoon> {
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
                      height: 20,
                    ),
                    Container(
                      height: 120,
                      width: 341,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(AppAssets.kidneyCard),fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20)
                          ,color: Color(0xff757575)
                      ),

                    ),


                    SizedBox(
                      height: 450,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          children: [
                            Image.asset(AppAssets.personThree),
                            Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Image.asset(AppAssets.personTwo),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 35.0),
                              child: Image.asset(AppAssets.personOne),
                            ),
                          ],
                        ),
                        Container(
                          height: 30,
                          width: 277,

                          decoration: BoxDecoration(
                              color: normalTextColor,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(
                            child: Text('+36 ENTROLLED',style: TextStyle(fontSize: 10),),
                          ),
                        ),

                      ],
                    )
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
