import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final double buttonWidth;
  final double buttonHeight;
  final String text;
  final Color buttonColor;

  const CustomButton(
      {super.key,
      required this.text,
      this.buttonWidth = 150,
      this.buttonHeight = 50,
      this.buttonColor = Colors.orange});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(color: Colors.white);

    return Container(
      alignment: Alignment.center,
      width: buttonWidth,
      height: buttonHeight,
      decoration: BoxDecoration(
          color: buttonColor, borderRadius: BorderRadius.circular(100)),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
