import 'package:flutter/material.dart';
import 'package:simple_food_app/component/accounts_widget.dart';
import 'package:simple_food_app/component/icon_widget.dart';
import 'package:simple_food_app/component/profile_widget.dart';

import '../app_assets/app_assets.dart';
import '../auth_screens/create_account_sreen.dart';
import '../color/color.dart';
import '../component/textfield_component.dart';

class MyAccountScreen extends StatefulWidget {
  const MyAccountScreen({Key? key}) : super(key: key);

  @override
  State<MyAccountScreen> createState() => _MyAccountScreenState();
}

class _MyAccountScreenState extends State<MyAccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                TopIconWidget(iconData: Icons.person, color: lightGreen),
                TopIconWidgetTwo(imageurl: AppAssets.kidney, color: bgColor),
                TopIconWidgetTwo(imageurl: AppAssets.colon, color: bgColor),
              ],
            ),
            const SizedBox(
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
                  const SizedBox(
                    height: 30,
                  ),
                  const ProfileWidget(),
                  const SizedBox(
                    height: 15,
                  ),
                  AccountWidget(title: 'Shipping'),
                  const SizedBox(
                    height: 15,
                  ),
                  AccountWidget(title: 'Billing'),
                  const SizedBox(
                    height: 15,
                  ),
                  AccountWidget(title: 'Card'),
                  const SizedBox(
                    height: 15,
                  ),
                  AccountWidget(title: 'Notifications'),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'Contact us',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                      const Text(
                        'Logout',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
