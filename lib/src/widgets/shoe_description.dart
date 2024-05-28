import 'package:flutter/material.dart';

class ShoeDescription extends StatelessWidget {
  final String title;
  final String description;

  const ShoeDescription(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    const titleStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w700);
    const descriptionStyle = TextStyle(color: Colors.black54, height: 1.6);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Text(
            title,
            style: titleStyle,
          ),
          const SizedBox(height: 20),
          Text(
            description,
            style: descriptionStyle,
          )
        ],
      ),
    );
  }
}
