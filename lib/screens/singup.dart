// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import '../Widget/Config.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.fromLTRB(25, 140, 25, 20),
              child: Column(
                children: [
                  TitleTextWidget(
                    text: 'Welcome Back!',
                  ),
                  SizedBox(height: 10),
                  SubTitleTextWidget(
                    text: 'Please enter your account here',
                  ),
                  SizedBox(height: 25),
                  SizedBox(height: 10),
                  TextFieldWidget(
                    text: 'Email Address',
                    iconPrefix: Icons.mail_outline_outlined,
                    iconSuffix: null,
                  ),
                  SizedBox(height: 10),
                  TextFieldWidget(
                    text: 'Password',
                    iconPrefix: Icons.lock_outline,
                    iconSuffix: Icons.visibility_outlined,
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      child: Column(
                        children: [
                          Text("Your password must contain:"),
                          SizedBox(height: 15),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.check_circle_outlined,
                                  ),
                                  SizedBox(width: 10),
                                  Text("At least 6 Characters")
                                ],
                              ),
                              SizedBox(height: 15),
                              Row(
                                children: [
                                  Icon(
                                    Icons.check_circle_outlined,
                                  ),
                                  SizedBox(width: 10),
                                  Text("Contains a number")
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  ButtonWidget(
                    tap: MaterialPageRoute(builder: (context) => SignUp()),
                    text: 'Sign Up',
                    colors: Color(0xff1fcc79),
                  ),
                ],
              ),
            )));
  }
}
