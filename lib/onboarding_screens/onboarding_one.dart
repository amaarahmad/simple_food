import 'package:flutter/material.dart';
import 'package:simple_food_app/component/onBoardingWdgetTwo.dart';
import 'package:simple_food_app/component/onBoardingWidget.dart';
import 'package:simple_food_app/component/text_component.dart';
import 'package:simple_food_app/onboarding_screens/onboarding_second.dart';

import '../color/color.dart';

class OnboardingScreenOne extends StatefulWidget {
  const OnboardingScreenOne({Key? key}) : super(key: key);

  @override
  State<OnboardingScreenOne> createState() => _OnboardingScreenOneState();
}

class _OnboardingScreenOneState extends State<OnboardingScreenOne> {
  PageController controller=PageController();
  int pageNo=0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: bgColor,
        body: Column(
          children: [
            Expanded(
              child: PageView(
                onPageChanged: (page){
                  setState(() {
                    pageNo=page;
                  });
                },
                controller: controller,
                children: [
                  OnBoardingScreenWidget(),
                  OnBoardingScreenWidgetTwo()


                ],
              ),
            ),

          ],
        )
      ),
    );
  }
}
