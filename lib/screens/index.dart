// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';
import '../Widget/Config.dart';
import 'signin.dart';

class Index extends StatelessWidget {
  const Index({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Image(
          image: AssetImage("images/onboard.png"),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              TitleTextWidget(
                text: 'Start Cooking',
              ),
              SizedBox(height: 15),
              SubTitleTextWidget(
                text: 'Let’s join our community\nto cook better food!',
              ),
              SizedBox(height: 60),
              ButtonWidget(
                tap: MaterialPageRoute(builder: (context) => SignIn()),
                text: 'Get Started!',
                colors: Color(0xff1fcc79),
              ),
            ],
          ),
        )
      ],
    ));
  }
}


// Navigator.push(
//   context,
//   MaterialPageRoute(
//     builder: (context) {
//       return SignIn();
//     },
//   ),
// );