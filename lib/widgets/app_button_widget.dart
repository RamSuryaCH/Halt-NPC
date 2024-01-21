// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class AppButtonWidget extends StatelessWidget {
  AppButtonWidget(
      {Key? key,
      required this.title,
      required this.titleColour,
      required this.buttonBackgroundColour,
      required this.buttonBoaderColour,
      required this.onPressed})
      : super(key: key);
  final String title;
  final Color titleColour;
  final Color buttonBackgroundColour;
  final Color buttonBoaderColour;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Container(
          width: 324,
          height: 45,
          alignment: Alignment.center,
          child: Text(
            title,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w700, color: titleColour),
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: buttonBackgroundColour,
          ),
        ));
  }
}
