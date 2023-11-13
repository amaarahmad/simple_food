import 'package:flutter/material.dart';
import 'package:simple_food_app/app_assets/app_assets.dart';
import 'package:simple_food_app/component/text_component.dart';

import '../color/color.dart';
import '../onboarding_screens/onboarding_second.dart';

class ColonScreen extends StatelessWidget {
  const ColonScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 68,
            ),
            Center(
              child: Container(
                height: 150,
                width: 340,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(image: AssetImage(AppAssets.kidneyCardTwo),fit: BoxFit.cover)
                ),
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            Text("What's in the program?",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: lightGreen),),
            const SizedBox(
              height: 12,
            ),
            TextComponent(title: 'Latero Flora: Natural probiotic\nOxy Powder: Eliminates toxins'),

            const SizedBox(
              height: 48,
            ),

            Text("How it works?",style: TextStyle(fontSize: 22,fontWeight: FontWeight.w700,color: lightGreen),),
            const SizedBox(
              height: 10,
            ),
            Text('Day 1 to Day 4',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.bold),),
            Text('Latero Flora,Oxy Powder',style: TextStyle(fontSize: 16,color: Colors.white),),


            const SizedBox(
              height: 137,
            ),

            Container(
              height: 58,
              width: 310,
              decoration: BoxDecoration(
                  color: lightGreen,
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Back',style: TextStyle(fontSize: 16),),
                  const Icon(Icons.arrow_forward_rounded)
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextComponent(title: "We'll guid you Throughout the program with reminders,tips and recommendations"),


          ],
        ),
      ),
    );
  }
}
