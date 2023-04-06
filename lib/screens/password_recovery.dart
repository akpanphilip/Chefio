// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:chefio/screens/email_confirm.dart';
import 'package:chefio/screens/singup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import '../Widget/Config.dart';

class PasswordRecovery extends StatefulWidget {
  const PasswordRecovery({super.key});

  @override
  State<PasswordRecovery> createState() => _PasswordRecoveryState();
}

class _PasswordRecoveryState extends State<PasswordRecovery> {
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
                    text: 'Password Recovery',
                  ),
                  SizedBox(height: 10),
                  SubTitleTextWidget(
                    text: 'Please enter your email to recover your password',
                  ),
                  SizedBox(height: 25),
                  SizedBox(height: 10),
                  TextFieldWidget(
                    text: 'Email Address',
                    iconPrefix: Icons.mail_outline_outlined,
                    iconSuffix: null,
                  ),
                  SizedBox(height: 20),
                  ButtonWidget(
                    tap:
                        MaterialPageRoute(builder: (context) => EmailConfirm()),
                    text: 'Sign In',
                    colors: Color(0xff1fcc79),
                  ),
                ],
              ),
            )));
  }
}
