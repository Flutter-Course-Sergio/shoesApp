import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String label;

  const CustomAppBar({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    const style = TextStyle(fontSize: 30, fontWeight: FontWeight.w700);

    return SafeArea(
      top: true,
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          width: double.infinity,
          child: Row(
            children: [
              Text(
                label,
                style: style,
              ),
              const Spacer(),
              const Icon(Icons.search, size: 30)
            ],
          ),
        ),
      ),
    );
  }
}
