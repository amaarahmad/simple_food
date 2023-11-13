import 'package:flutter/material.dart';
import '../app_assets/app_assets.dart';

import '../color/color.dart';
import '../component/icon_widget.dart';
class ColonCleanseScreen extends StatefulWidget {
  const ColonCleanseScreen({Key? key}) : super(key: key);

  @override
  State<ColonCleanseScreen> createState() => _ColonCleanseScreenState();
}

class _ColonCleanseScreenState extends State<ColonCleanseScreen> {
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
                TopIconWidgetTwo(imageurl: AppAssets.kidney, color: bgColor),
                TopIconWidgetTwo(imageurl: AppAssets.colon, color: lightGreen),
              ],
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
                      height: 538,
                      width: 375,

                      decoration: BoxDecoration(
                          color: Color(0xffEDEDED),
                          borderRadius: BorderRadius.circular(20.0)

                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text('Colon Cleanse',style: TextStyle(fontSize: 30),),
                              Image.asset(AppAssets.colonTwo)
                            ],
                          ),
                          SizedBox(
                            height: 35,
                          ),
                          Container(
                            height: 230,
                            width: 232,
                            decoration: BoxDecoration(
                                color: lightGreen,
                                borderRadius: BorderRadius.circular(50.0)
                            ),
                            child: Image.asset(AppAssets.colonBottle,alignment: Alignment.bottomCenter),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Rs59.99",style: TextStyle(fontSize: 30),),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                height: 56,
                                width: 178,
                                decoration: BoxDecoration(
                                    color: lightGreen,
                                    borderRadius: BorderRadius.circular(12)
                                ),
                                child:  Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Entrol now',style: TextStyle(fontSize: 17),),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(Icons.play_circle_outline,size: 28,)
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
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
                          width: 122,

                          decoration: BoxDecoration(
                              color: normalTextColor,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(
                            child: Text('+36 ENTROLLED',style: TextStyle(fontSize: 10),),
                          ),
                        ),
                        Container(
                          height: 30,
                          width: 122,

                          decoration: BoxDecoration(
                              color: normalTextColor,
                              borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(
                            child: Text('HOW IT WORKS',style: TextStyle(fontSize: 10),),
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
