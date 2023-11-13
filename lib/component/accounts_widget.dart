import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountWidget extends StatelessWidget {
  String title;
   AccountWidget({Key? key,required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83,
      width: 346,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(title,style: TextStyle(fontSize: 28),),
          SizedBox(
            width: 10,
          ),
          Image.asset('assets/icons/pencil.png')
        ],
      ),

    );
  }
}
