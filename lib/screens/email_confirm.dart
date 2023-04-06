// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, sort_child_properties_last, unused_import

import 'package:chefio/screens/singup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/services.dart';
import '../Widget/Config.dart';

class EmailConfirm extends StatefulWidget {
  const EmailConfirm({super.key});

  @override
  State<EmailConfirm> createState() => _EmailConfirmState();
}

class _EmailConfirmState extends State<EmailConfirm> {
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
                    text: 'Check your email',
                  ),
                  SizedBox(height: 10),
                  SubTitleTextWidget(
                    text: "We've sent the code to your email",
                  ),
                  SizedBox(height: 30),
                  Form(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 72,
                        height: 72,
                        child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                            hintText: "0",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)),
                          ),
                          style: Theme.of(context).textTheme.headlineMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 72,
                        height: 72,
                        child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                              hintText: "0",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          style: Theme.of(context).textTheme.headlineMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 72,
                        height: 72,
                        child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                              hintText: "0",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          style: Theme.of(context).textTheme.headlineMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 72,
                        height: 72,
                        child: TextField(
                          onChanged: (value) {
                            if (value.length == 1) {
                              FocusScope.of(context).nextFocus();
                            }
                          },
                          decoration: InputDecoration(
                              hintText: "0",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20))),
                          style: Theme.of(context).textTheme.headlineMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                    ],
                  )),
                  SizedBox(height: 30),
                  RichText(
                      text: TextSpan(
                          text: "Code expires in: ",
                          style: TextStyle(color: Colors.black),
                          children: [
                        TextSpan(
                          text: '03:12',
                          style: TextStyle(
                              color: Color(0xffFF5842),
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
                      ])),
                  SizedBox(height: 20),
                  ButtonWidget(
                    tap:
                        MaterialPageRoute(builder: (context) => EmailConfirm()),
                    text: 'Verify',
                    colors: Color(0xff1fcc79),
                  ),
                  SizedBox(height: 20),
                  ButtonWidget(
                    tap:
                        MaterialPageRoute(builder: (context) => EmailConfirm()),
                    text: 'Send again',
                    colors: Color(0xff9fafff),
                  ),
                ],
              ),
            )));
  }
}
