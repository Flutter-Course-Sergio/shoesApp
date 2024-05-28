import 'package:flutter/material.dart';

import '../widgets/custom_widgets.dart';

class ShoePage extends StatelessWidget {
  const ShoePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(
      children: [
        CustomAppBar(label: 'For you'),
        SizedBox(height: 20),
        Expanded(
            child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Hero(
                tag: 'shoe-main',
                child: ShoeSizePreview()),
              ShoeDescription(
                  title: 'Nike Air Max 720',
                  description:
                      "The Nike Air Max 720 goes bigger than ever before with Nike's taller Air unit yet, offering more air underfoot for unimaginable, all-day comfort. Has Air Max gone too far? We hope so."),
            ],
          ),
        )),
        AddToCarButton(
          value: 180.0,
          buttonText: 'Add to cart',
        )
      ],
    ));
  }
}
