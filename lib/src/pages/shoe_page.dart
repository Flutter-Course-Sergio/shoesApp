import 'package:flutter/material.dart';

import '../widgets/custom_widgets.dart';

class ShoePage extends StatelessWidget {
  const ShoePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: CustomAppBar(
      label: 'For you',
    ));
  }
}
