import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:simple_food_app/color/color.dart';
import 'package:simple_food_app/component/textfield_component.dart';

import 'create_account_sreen.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isCheck=false;
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
              Container(
                height: 60,
                width: 60,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: lightGreen,
                    borderRadius: BorderRadius.circular(12)
                ),
                child: const Icon(Icons.person,color: Colors.white,),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height*0.80,
                decoration:  BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:  Radius.circular(20))
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 173,
                    ),
                    const Text('Hi there',style: TextStyle(fontSize: 16,color: Colors.white),),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text('Welcome Back',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),

                    const SizedBox(
                      height: 15,
                    ),
                    TextFieldComponent(title: 'Email', iconData: Icons.email_outlined),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFieldComponent(title: 'Password', iconData: Icons.lock_open_outlined,suffix: Icons.visibility_off_outlined,),
                    const SizedBox(
                      height: 10,
                    ),
                    Text('Forget your password',style: TextStyle(color: Color(0xffADA4A5)),),


                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 60,
                      width: 315,
                      decoration: BoxDecoration(
                          color: lightGreen,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: const Center(child: Text('Login',style: TextStyle(fontSize: 16),)),
                    ),
                    const SizedBox(
                      height: 20,
                    ),

                    Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            color: Colors.white,
                            thickness: 1.0,
                          ),
                        ),
                        const Text('    Or    ',style: TextStyle(color: Colors.white),),
                        const Expanded(
                          child: Divider(
                            color: Colors.white,
                            thickness: 1.0,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset('assets/social.png'),
                    const SizedBox(
                      height:20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account yet?",style: TextStyle(color: Colors.white,fontSize: 14),),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccountScreen()));

                        },child: Text('Register',style: TextStyle(color: lightGreen,fontSize: 14),)),
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
