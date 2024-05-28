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
        ShoeSizePreview(),
      ],
    ));
  }
}
