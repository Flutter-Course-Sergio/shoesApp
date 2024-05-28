import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;

  const CustomButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(color: Colors.white);

    return Container(
      alignment: Alignment.center,
      width: 150,
      height: 50,
      decoration: BoxDecoration(
          color: Colors.orange, borderRadius: BorderRadius.circular(100)),
      child: Text(
        text,
        style: textStyle,
      ),
    );
  }
}
