import 'package:flutter/material.dart';

class ShoeSizePreview extends StatelessWidget {
  const ShoeSizePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 430,
        decoration: BoxDecoration(
            color: const Color(0xffFFCF53),
            borderRadius: BorderRadius.circular(50)),
        child: const Column(
          children: [_ShadowShoe()],
        ),
      ),
    );
  }
}

class _ShadowShoe extends StatelessWidget {
  const _ShadowShoe();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Stack(
        children: [
          Image(image: AssetImage('assets/imgs/azul.png')),
        ],
      ),
    );
  }
}
