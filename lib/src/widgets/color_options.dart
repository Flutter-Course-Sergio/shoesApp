import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../models/models.dart';
import 'custom_widgets.dart';

class ColorOptions extends StatelessWidget {
  const ColorOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          SizedBox(width: 20),
          Expanded(
              child: Stack(
            children: [
              Positioned(
                  left: 90,
                  child: _ColorButton(
                      Color(0xffc6d642), 4, 'assets/imgs/verde.png')),
              Positioned(
                  left: 60,
                  child: _ColorButton(
                      Color(0xffffad29), 3, 'assets/imgs/amarillo.png')),
              Positioned(
                  left: 30,
                  child: _ColorButton(
                      Color(0xff2099f1), 2, 'assets/imgs/azul.png')),
              _ColorButton(Color(0xff364d56), 1, 'assets/imgs/negro.png'),
            ],
          )),
          CustomButton(
            text: 'More related items',
            buttonHeight: 30,
            buttonWidth: 170,
            buttonColor: Color(0xffffc675),
          ),
          SizedBox(width: 20),
        ],
      ),
    );
  }
}

class _ColorButton extends StatelessWidget {
  final Color color;
  final int index;
  final String url;

  const _ColorButton(this.color, this.index, this.url);

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      delay: Duration(milliseconds: index * 100),
      duration: const Duration(milliseconds: 300),
      child: GestureDetector(
        onTap: () {
          final shoeModel = Provider.of<ShoeModel>(context, listen: false);
          shoeModel.assetImage = url;
        },
        child: Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(color: color, shape: BoxShape.circle),
        ),
      ),
    );
  }
}
