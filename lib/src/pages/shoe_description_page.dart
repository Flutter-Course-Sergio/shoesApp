import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';


import '../helpers/helpers.dart';
import '../widgets/custom_widgets.dart';

class ShoeDescriptionPage extends StatelessWidget {
  const ShoeDescriptionPage({super.key});

  @override
  Widget build(BuildContext context) {
    changeStatusLight();

    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            const Hero(
              tag: 'shoe-main',
              child: ShoeSizePreview(
                fullscreen: true,
              ),
            ),
            Positioned(
                top: 50,
                left: 10,
                child: FloatingActionButton(
                  elevation: 0,
                  highlightElevation: 0,
                  backgroundColor: Colors.transparent,
                  onPressed: () {
                    Navigator.pop(context);
                  },
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
                _ValueBuyNow(),
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

class _ValueBuyNow extends StatelessWidget {
  const _ValueBuyNow();

  @override
  Widget build(BuildContext context) {
    const valueStyle = TextStyle(fontSize: 28, fontWeight: FontWeight.bold);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Container(
          margin: const EdgeInsets.only(top: 20, bottom: 20),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
          child: Row(
            children: [
              const Text(
                '\$180.0',
                style: valueStyle,
              ),
              const Spacer(),
              Bounce(
                delay: const Duration(seconds: 1),
                from: 8,
                child: const CustomButton(
                  text: 'Buy now',
                  buttonHeight: 40,
                  buttonWidth: 120,
                ),
              ),
            ],
          )),
    );
  }
}
