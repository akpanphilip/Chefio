// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last

import 'package:chefio/screens/singup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import '../Widget/Config.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Text("Forgot password?")],
                  ),
                  SizedBox(height: 60),
                  // ButtonWidget(text: "Login", colors: Color(0xff1fcc79)),
                  ButtonWidget(
                    tap: MaterialPageRoute(builder: (context) => SignIn()),
                    text: 'Login',
                    colors: Color(0xff1fcc79),
                  ),
                  SizedBox(height: 20),
                  Text('Or continue with'),
                  SizedBox(height: 20),
                  // ElevatedButton(
                  //   onPressed: () {},
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Icon(Icons.g_translate),
                  //       SizedBox(width: 5),
                  //       Text("Google")
                  //     ],
                  //   ),
                  //   style: ElevatedButton.styleFrom(
                  //       fixedSize: Size(300, 60),
                  //       textStyle: TextStyle(
                  //           fontSize: 20.0, fontWeight: FontWeight.bold),
                  //       primary: Colors.red,
                  //       // elevation: 15,
                  //       shape: StadiumBorder()),
                  // ),
                  ButtonWidget(
                    tap: MaterialPageRoute(builder: (context) => SignIn()),
                    text: 'Google',
                    colors: Color(0xffFF5842),
                  ),
                  SizedBox(height: 20),
                  RichText(
                      text: TextSpan(
                          text: "Don't have any account?",
                          style: TextStyle(color: Colors.black),
                          children: [
                        TextSpan(
                          text: 'Sign Up',
                          style: TextStyle(
                              color: Color(0xff1fcc79),
                              fontWeight: FontWeight.bold),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return SignUp();
                                  },
                                ),
                              );
                            },
                        )
                      ]))
                ],
              ),
            )));
  }
}
