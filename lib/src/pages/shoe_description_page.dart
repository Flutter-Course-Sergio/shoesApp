import 'package:flutter/material.dart';

import '../widgets/custom_widgets.dart';

class ShoeDescriptionPage extends StatelessWidget {
  const ShoeDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            const ShoeSizePreview(
              fullscreen: true,
            ),
            Positioned(
                top: 50,
                left: 10,
                child: FloatingActionButton(
                  elevation: 0,
                  highlightElevation: 0,
                  backgroundColor: Colors.transparent,
                  onPressed: () {},
                  child: const Icon(
                    Icons.chevron_left_outlined,
                    color: Colors.white,
                    size: 60,
                  ),
                )),
          ],
        ),
        const Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                ShoeDescription(
                    title: 'Nike Air Max 720',
                    description:
                        "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."),
                AddToCarButton(
                  value: 180.0,
                  buttonText: 'Buy now',
                  containerHeight: 60,
                  colorOpacity: 0.08,
                  buttonWidth: 120,
                  buttonHeight: 40,
                ),
                ColorOptions(),
                FloatingButtons()
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
