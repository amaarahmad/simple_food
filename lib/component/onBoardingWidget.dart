import 'package:flutter/material.dart';
import 'package:simple_food_app/component/text_component.dart';

import '../color/color.dart';
import '../onboarding_screens/onboarding_second.dart';

class OnBoardingScreenWidget extends StatelessWidget {
  const OnBoardingScreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 48,
          ),
          Center(
            child: Container(
              height: 110,
              width: 341,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: const DecorationImage(image: AssetImage('assets/card1.jpg'),fit: BoxFit.cover)
              ),
            ),
          ),
          const SizedBox(
            height: 48,
          ),
          Text('Healthy Kidney',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w700,color: lightGreen),),
          const SizedBox(
            height: 12,
          ),
          TextComponent(title: 'Promotes a Healthy Microbiota'),
          TextComponent(title: 'Cleanses the Intestinal Tract'),
          TextComponent(title: 'Regulates Fluid Balance'),
          TextComponent(title: 'Supports Urinary Health'),
          TextComponent(title: 'Boosts Total Wellness'),
          const SizedBox(
            height: 48,
          ),

          const Text('Healthy Kidney',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w700,color: Colors.red),),
          const SizedBox(
            height: 10,
          ),
          TextComponent(title: 'Weak Bones'),
          TextComponent(title: 'Heart Diseases'),
          TextComponent(title: 'High blood pressure'),
          TextComponent(title: 'Decreased Sex Drive'),
          TextComponent(title: 'Decreased Immune Response'),
          const SizedBox(
            height: 137,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 58,
                width: 58,
                decoration: BoxDecoration(
                    color: darkGreen,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: const Icon(Icons.arrow_back,color: Colors.white,),
              ),
              const SizedBox(
                width: 12,
              ),
              Container(
                height: 58,
                width: 245,
                decoration: BoxDecoration(
                    color: lightGreen,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Next',style: TextStyle(fontSize: 16),),
                    const Icon(Icons.arrow_forward_rounded)
                  ],
                ),
              ),
            ],
          )

        ],
      ),
    );
  }
}
