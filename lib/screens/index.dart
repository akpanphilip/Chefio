// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, deprecated_member_use

import 'package:flutter/material.dart';

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
              Text(
                "Start Cooking",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              SizedBox(height: 15),
              Text("Let's join our community", style: TextStyle(fontSize: 17)),
              Text("to cook better food", style: TextStyle(fontSize: 17)),
              SizedBox(height: 60),
              ElevatedButton(
                onPressed: () {},
                child: Text("Get Started"),
                style: ElevatedButton.styleFrom(
                    fixedSize: Size(300, 60),
                    textStyle:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    primary: Colors.green[700],
                    // elevation: 15,
                    shape: StadiumBorder()),
              )
            ],
          ),
        )
      ],
    ));
  }
}
