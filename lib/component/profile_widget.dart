import 'package:flutter/material.dart';
import 'package:simple_food_app/app_assets/app_assets.dart';
import 'package:simple_food_app/color/color.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      width: 346,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Center(
        child: ListTile(
          leading:ClipOval(
            child: Image.asset(AppAssets.avatar,
            fit: BoxFit.cover,
              height: 60,
              width: 60,
            ),
          ),
          title: Text('Yolanda',style: TextStyle(fontSize: 22),),
          subtitle: Text('Yolanda@gmail.com',style: TextStyle(fontSize: 12,color:normalTextColor )),
          trailing: Image.asset('assets/icons/pencil.png'),
        ),
      ),
    );
  }
}
