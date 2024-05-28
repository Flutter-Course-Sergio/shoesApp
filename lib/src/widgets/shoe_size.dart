import 'package:flutter/material.dart';

class ShoeSizePreview extends StatelessWidget {
  const ShoeSizePreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Container(
        width: double.infinity,
        height: 450,
        decoration: BoxDecoration(
            color: const Color(0xffFFCF53),
            borderRadius: BorderRadius.circular(50)),
        child: Column(
          children: [_ShoeBox(), _ShoeSizes()],
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
    final textStyle = TextStyle(
        color: (size == 9) ? Colors.white : const Color(0xffF1A23A),
        fontSize: 16,
        fontWeight: FontWeight.bold);

    return Container(
      alignment: Alignment.center,
      width: 45,
      height: 45,
      decoration: BoxDecoration(
          color: (size == 9) ? const Color(0xffF1A23A) : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            if (size == 9)
              const BoxShadow(
                  color: Color(0xffF1A23A),
                  blurRadius: 10,
                  offset: Offset(0, 5))
          ]),
      child: Text(
        size.toString().replaceAll('.0', ''),
        style: textStyle,
      ),
    );
  }
}
