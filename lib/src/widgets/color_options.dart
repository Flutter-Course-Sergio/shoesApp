import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
              Positioned(left: 90, child: _ColorButton(Color(0xffc6d642))),
              Positioned(left: 60, child: _ColorButton(Color(0xffffad29))),
              Positioned(left: 30, child: _ColorButton(Color(0xff2099f1))),
              _ColorButton(Color(0xff364d56)),
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

  const _ColorButton(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
