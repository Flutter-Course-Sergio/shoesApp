import 'package:flutter/material.dart';

import 'custom_widgets.dart';

class AddToCarButton extends StatelessWidget {
  final double value;
  final String buttonText;
  final double containerHeight;
  final double colorOpacity;
  final double buttonWidth;
  final double buttonHeight;

  const AddToCarButton(
      {super.key,
      required this.value,
      required this.buttonText,
      this.containerHeight = 100,
      this.colorOpacity = 0.2,
      this.buttonHeight = 50,
      this.buttonWidth = 150});

  @override
  Widget build(BuildContext context) {
    const valueStyle = TextStyle(fontSize: 28, fontWeight: FontWeight.bold);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
          width: double.infinity,
          height: containerHeight,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(colorOpacity),
              borderRadius: BorderRadius.circular(100)),
          child: Row(
            children: [
              const SizedBox(width: 20),
              Text(
                '\$$value',
                style: valueStyle,
              ),
              const Spacer(),
              CustomButton(
                  text: buttonText,
                  buttonWidth: buttonWidth,
                  buttonHeight: buttonHeight),
              const SizedBox(width: 20),
            ],
          )),
    );
  }
}
