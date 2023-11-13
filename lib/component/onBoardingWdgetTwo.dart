import 'package:flutter/material.dart';
import 'package:simple_food_app/component/text_component.dart';

import '../auth_screens/login_screen.dart';
import '../color/color.dart';
import '../onboarding_screens/onboarding_one.dart';
class OnBoardingScreenWidgetTwo extends StatefulWidget {
  const OnBoardingScreenWidgetTwo({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreenWidgetTwo> createState() => _OnBoardingScreenWidgetTwoState();
}

class _OnBoardingScreenWidgetTwoState extends State<OnBoardingScreenWidgetTwo> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 48,
          ),
          Center(child: Image.asset('assets/card.png')),
          const SizedBox(
            height: 1,
          ),
          Text(
            'Healthy Colon',
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: lightGreen),
          ),
          const SizedBox(
            height: 12,
          ),
          TextComponent(title: 'Turns Up the Immune System'),
          TextComponent(title: 'Soothes the Intestinal Tract'),
          TextComponent(title: 'Stimulates Brain Function'),
          TextComponent(title: 'Optimizes the Microbiota'),
          TextComponent(title: 'Supports Gut Health'),
          const SizedBox(
            height: 48,
          ),
          const Text(
            'Unhealthy Colon',
            style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w700,
                color: Colors.red),
          ),
          const SizedBox(
            height: 10,
          ),
          TextComponent(title: 'Skin Irritations'),
          TextComponent(title: 'Sleep Problems'),
          TextComponent(title: 'Feeling Tired Often'),
          TextComponent(title: 'Frequent Mood Changes'),
          TextComponent(title: 'Unintentional Weight Gain'),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const OnboardingScreenOne()));
                },
                child: Container(
                  height: 58,
                  width: 58,
                  decoration: BoxDecoration(
                      color: darkGreen,
                      borderRadius: BorderRadius.circular(12)),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginScreen()));
                },
                child: Container(
                  height: 58,
                  width: 245,
                  decoration: BoxDecoration(
                      color: lightGreen,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Start Clensing',
                        style: TextStyle(fontSize: 16),
                      ),
                      const Icon(Icons.arrow_forward_rounded)
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
