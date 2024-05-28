import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double buttonWidth;
  final double buttonHeight;
  final String text;

  const CustomButton(
      {super.key,
      required this.text,
      required this.buttonWidth,
      required this.buttonHeight});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(color: Colors.white);

    return Container(
      alignment: Alignment.center,
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(100)),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
