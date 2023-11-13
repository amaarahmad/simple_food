import 'package:flutter/material.dart';

import '../app_assets/app_assets.dart';
import '../color/color.dart';
import '../component/icon_widget.dart';
class ColonCleanseStartSoon extends StatefulWidget {
  const ColonCleanseStartSoon({Key? key}) : super(key: key);

  @override
  State<ColonCleanseStartSoon> createState() => _ColonCleanseStartSoonState();
}

class _ColonCleanseStartSoonState extends State<ColonCleanseStartSoon> {
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
                      height: 20,
                    ),
                    Container(
                      height: 120,
                      width: 341,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),

                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,

                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text('Colon Cleanse',style: TextStyle(fontSize: 30),),
                                  Text('Click here to start')
                                ],
                              ),
                              Image.asset('assets/colonDark.png'),
                            ],
                          ),

                        ],
                      ),
                    ),

                    //Image.asset(AppAssets.kidneyCardTwo),


                    SizedBox(
                      height: 400,
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
