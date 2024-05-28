import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/models.dart';
import '../pages/pages.dart';

class ShoeSizePreview extends StatelessWidget {
  final bool fullscreen;

  const ShoeSizePreview({super.key, this.fullscreen = false});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (!fullscreen) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ShoeDescriptionPage()));
        }
      },
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: (fullscreen) ? 5 : 30, vertical: (fullscreen) ? 5 : 0),
        child: Container(
          width: double.infinity,
          height: (fullscreen) ? 430 : 450,
          decoration: BoxDecoration(
              color: const Color(0xffFFCF53),
              borderRadius: (!fullscreen)
                  ? BorderRadius.circular(50)
                  : const BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40))),
          child: Column(
            children: [_ShoeBox(), if (!fullscreen) _ShoeSizes()],
          ),
        ),
      ),
    );
  }
}

class _ShoeBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: Stack(
        children: [
          Positioned(bottom: 20, right: 0, child: _ShoeShadow()),
          const Image(image: AssetImage('assets/imgs/azul.png')),
        ],
      ),
    );
  }
}

class _ShoeShadow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -0.5,
      child: Container(
        width: 230,
        height: 140,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            boxShadow: const [
              BoxShadow(color: Color(0xffEAA14E), blurRadius: 40)
            ]),
      ),
    );
  }
}

class _ShoeSizes extends StatelessWidget {
  final List<Widget> shoes = const [
    _ShoeSizeBox(7),
    _ShoeSizeBox(7.5),
    _ShoeSizeBox(8),
    _ShoeSizeBox(8.5),
    _ShoeSizeBox(9),
    _ShoeSizeBox(9.5),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [...shoes],
      ),
    );
  }
}

class _ShoeSizeBox extends StatelessWidget {
  final double size;

  const _ShoeSizeBox(this.size);

  @override
  Widget build(BuildContext context) {
    final shoeModel = Provider.of<ShoeModel>(context);

    final textStyle = TextStyle(
        color:
            (size == shoeModel.size) ? Colors.white : const Color(0xffF1A23A),
        fontSize: 16,
        fontWeight: FontWeight.bold);

    return GestureDetector(
      onTap: () {
        final shoeModel = Provider.of<ShoeModel>(context, listen: false);
        shoeModel.size = size;
      },
      child: Container(
        alignment: Alignment.center,
        width: 45,
        height: 45,
        decoration: BoxDecoration(
            color: (size == shoeModel.size)
                ? const Color(0xffF1A23A)
                : Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              if (size == shoeModel.size)
                const BoxShadow(
                    color: Color(0xffF1A23A),
                    blurRadius: 10,
                    offset: Offset(0, 5))
            ]),
        child: Text(
          size.toString().replaceAll('.0', ''),
          style: textStyle,
        ),
      ),
    );
  }
}
