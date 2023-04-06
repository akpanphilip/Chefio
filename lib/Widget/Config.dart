// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

// title text
class TitleTextWidget extends StatelessWidget {
  final String text;

  const TitleTextWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xff3d5480),
        fontSize: 22,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}

// sub title text
class SubTitleTextWidget extends StatelessWidget {
  final String text;
  const SubTitleTextWidget({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Color(0xff9fa5c0),
        fontSize: 13,
        fontFamily: "Inter",
        fontWeight: FontWeight.w500,
        letterSpacing: 0.50,
      ),
    );
  }
}

// button

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color colors;
  final MaterialPageRoute tap;
  const ButtonWidget({
    super.key,
    required this.text,
    required this.tap,
    required this.colors,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(context, tap);
      },
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.10,
        ),
      ),
      style: ElevatedButton.styleFrom(
          fixedSize: Size(600, 55),
          backgroundColor: colors,
          textStyle: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          elevation: 10,
          shape: StadiumBorder()),
    );
  }
}

// textfield
class TextFieldWidget extends StatelessWidget {
  final String text;
  final IconData? iconSuffix, iconPrefix;
  const TextFieldWidget({
    super.key,
    required this.text,
    required this.iconSuffix,
    required this.iconPrefix,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            hintText: text,
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(width: 0.2, color: Colors.grey)),
            prefixIcon: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Icon(
                iconPrefix,
                size: 18,
              ),
            ),
            suffixIcon: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Icon(
                iconSuffix,
                size: 18,
              ),
            )));
  }
}

class ConfigApp {
  static void goto(page, context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return page;
        },
      ),
    );
  }
}

goto(page, context) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) {
        return page;
      },
    ),
  );
}
