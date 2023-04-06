// ignore_for_file: prefer_const_constructors

import 'package:chefio/screens/signin.dart';
import 'package:flutter/material.dart';
import 'screens/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Index(),
    );
  }
}
