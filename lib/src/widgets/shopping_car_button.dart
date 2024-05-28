import 'package:flutter/material.dart';

import 'custom_widgets.dart';

class AddToCarButton extends StatelessWidget {
  final double value;
  final String buttonText;


  const AddToCarButton(
      {super.key,
      required this.value,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    const valueStyle = TextStyle(fontSize: 28, fontWeight: FontWeight.bold);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
          width: double.infinity,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
              borderRadius: BorderRadius.circular(100)),
          child: Row(
            children: [
              const SizedBox(width: 20),
              Text(
                '\$$value',
                style: valueStyle,
              ),
              const Spacer(),
              CustomButton(text: buttonText),
              const SizedBox(width: 20),
            ],
          )),
    );
  }
}
