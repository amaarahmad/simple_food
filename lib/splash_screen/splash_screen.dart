import 'dart:async';

import 'package:flutter/material.dart';
import 'package:simple_food_app/app_assets/app_assets.dart';
import 'package:simple_food_app/onboarding_screens/onboarding_one.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingScreenOne())));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff5DA429),
        body: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: Image(

                  image: AssetImage(AppAssets.rectangle1)),
            ),
            SizedBox(
              height: 42,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Image(

                  image: AssetImage('assets/cirlce.png')),
            ),
            Text('Welcome to\nSimple Food',style: TextStyle(fontSize: 42,fontWeight: FontWeight.bold),),
            SizedBox(
              height: 42,
            ),
            Container(
              margin: EdgeInsets.only(left: 150),
              child: Image(
                  height: 161,
                  width: 164,


                  image: AssetImage('assets/Rectangle3.png')),
            ),
            SizedBox(
              height: 5,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Image(

                  image: AssetImage('assets/Rectangle4.png')),
            ),



          ],
        ),
      ),
    );
  }
}
