import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String? text;

  const ScreenTitle({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
        child: Text(
          text!,
          style: TextStyle(
              fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        tween: Tween<double>(begin: 0, end: 1), // from 0 to 1
        duration: const Duration(milliseconds: 900),
        builder: (BuildContext context, double val, Widget? child) {
          return Opacity(
              opacity: val,
              child: Padding(
                padding: EdgeInsets.only(top: val * 40),
                child: child,
              ));
        });
  }
}
