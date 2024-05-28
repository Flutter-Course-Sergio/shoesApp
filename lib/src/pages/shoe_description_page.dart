import 'package:flutter/material.dart';

import '../widgets/custom_widgets.dart';

class ShoeDescriptionPage extends StatelessWidget {
  const ShoeDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        ShoeSizePreview(
          fullscreen: true,
        ),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                ShoeDescription(
                    title: 'Nike Air Max 720',
                    description:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."),
                SizedBox(height: 10),
                AddToCarButton(
                  value: 180.0,
                  buttonText: 'Buy now',
                  containerHeight: 60,
                  colorOpacity: 0.08,
                  buttonWidth: 120,
                  buttonHeight: 40,
                ),
                SizedBox(height: 20),
                ColorOptions()
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
