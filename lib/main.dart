import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/models/models.dart';
import 'src/pages/pages.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => ShoeModel())],
      child: const MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "ShoesApp", debugShowCheckedModeBanner: false, home: ShoePage());
  }
}
