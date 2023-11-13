import 'package:flutter/material.dart';
import 'package:simple_food_app/account_screens/my_account_screen.dart';
import 'package:simple_food_app/address/address_screen.dart';
import 'package:simple_food_app/auth_screens/create_account_sreen.dart';
import 'package:simple_food_app/auth_screens/login_screen.dart';
import 'package:simple_food_app/colon_cleanse/clone_cleanse_morning.dart';
import 'package:simple_food_app/colon_cleanse/colon_cleanse_before_bed.dart';
import 'package:simple_food_app/colon_cleanse/colon_cleanse_screen.dart';
import 'package:simple_food_app/colon_cleanse/colon_cleanse_start_soon.dart';
import 'package:simple_food_app/colon_cleanse/colon_screen.dart';
import 'package:simple_food_app/kidney_cleanse/kidney_cleanse_afternoon.dart';
import 'package:simple_food_app/kidney_cleanse/kidney_cleanse_before_bed.dart';
import 'package:simple_food_app/kidney_cleanse/kidney_cleanse_evening.dart';
import 'package:simple_food_app/kidney_cleanse/kidney_cleanse_morning.dart';
import 'package:simple_food_app/kidney_cleanse/kidney_cleanse_screen.dart';
import 'package:simple_food_app/liver/liver_screen.dart';
import 'package:simple_food_app/onboarding_screens/onboarding_one.dart';
import 'package:simple_food_app/onboarding_screens/onboarding_second.dart';
import 'package:simple_food_app/splash_screen/splash_screen.dart';

import 'kidney_cleanse/kidney_cleanse_start_soon.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(
        fontFamily: "Roboto",

        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen()
    );
  }
}
