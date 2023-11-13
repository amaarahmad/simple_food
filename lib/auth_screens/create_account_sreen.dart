import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:simple_food_app/auth_screens/login_screen.dart';
import 'package:simple_food_app/color/color.dart';
import 'package:simple_food_app/component/textfield_component.dart';
class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
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
                      height: 43,
                    ),
                    const Text('Hi there',style: TextStyle(fontSize: 16,color: Colors.white),),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text('Create an Account',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFieldComponent(title: 'First name', iconData: Icons.person_outline),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFieldComponent(title: 'Last name', iconData: Icons.person_outline),
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
                    Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: Row(
                        children: [
                          Checkbox(
                              value: isCheck, onChanged: (vale){
                            vale=true;
                          },
                            activeColor: Colors.white,
                          ),
                          const Text('By continuing you accept our Privacy Policy and\n Term of Use',
                            style: TextStyle(color: Colors.white,fontSize: 10),)
                        ],
                      ),
                    ),
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
                      child: const Center(child: Text('Register',style: TextStyle(fontSize: 16),)),
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
                      height: 10,
                    ),
                    Image.asset('assets/social.png'),
                    const SizedBox(
                      height:10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an account?',style: TextStyle(color: Colors.white,fontSize: 14),),
                        TextButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                        },child: Text('Login',style: TextStyle(color: lightGreen,fontSize: 14),)),
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
