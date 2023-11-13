import 'package:flutter/material.dart';
import 'package:simple_food_app/app_assets/app_assets.dart';
import 'package:simple_food_app/component/accounts_widget.dart';
import 'package:simple_food_app/component/customField.dart';
import 'package:simple_food_app/component/icon_widget.dart';
import 'package:simple_food_app/component/profile_widget.dart';

import '../auth_screens/create_account_sreen.dart';
import '../color/color.dart';
import '../component/textfield_component.dart';

class AddressScreen extends StatefulWidget {
  const AddressScreen({Key? key}) : super(key: key);

  @override
  State<AddressScreen> createState() => _AddressScreenState();
}

class _AddressScreenState extends State<AddressScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
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
                      height: 20,
                    ),
                    Container(
                      height: 506,
                      width: 380,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            const Text(
                              'Current Shipping',
                              style: TextStyle(fontSize: 28),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              '1234 Main st, apt 200',
                              style: TextStyle(
                                  fontSize: 16, color: normalTextColor),
                            ),
                            Text(
                              'Houston, TX 77002',
                              style: TextStyle(
                                  fontSize: 16, color: normalTextColor),
                            ),
                            const SizedBox(
                              height: 25,
                            ),
                            const Text(
                              'ADD NEW ADDRESS - Line 1',
                              style:
                                  TextStyle(fontSize: 11, color: Colors.black),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            CustomField(
                              title: '    123 main st',
                              width: 308,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextWidget(title: 'ADDRESS Line 2'),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    CustomField(
                                        width: 143, title: '    apt 200')
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextWidget(title: 'City'),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    CustomField(
                                        width: 143, title: '    Houston')
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextWidget(title: 'State'),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    CustomField(width: 143, title: '    TX')
                                  ],
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TextWidget(title: 'Zip Code'),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    CustomField(width: 143, title: '    77002')
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 39,
                                  width: 87,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(
                                          color: Colors.black, width: 1)),
                                  child: const Center(
                                      child: Text(
                                    'Cancel',
                                    style: TextStyle(fontSize: 13),
                                  )),
                                ),
                                const SizedBox(
                                  width: 13,
                                ),
                                Container(
                                  height: 39,
                                  width: 172,
                                  decoration: BoxDecoration(
                                    color: lightGreen,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: const Center(
                                      child: Text(
                                    'SAVE NEW ADDRESS',
                                    style: TextStyle(fontSize: 13),
                                  )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
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
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  String title;
  TextWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: const TextStyle(fontSize: 11, color: Colors.black));
  }
}
