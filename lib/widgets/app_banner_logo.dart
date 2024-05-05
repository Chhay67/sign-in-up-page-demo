import 'package:flutter/material.dart';

class AppBannerLogo extends StatelessWidget {
  const AppBannerLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(6),
      ),
      child: const Text(
        'S',
        style: TextStyle(
            color: Colors.white, fontSize: 40, fontWeight: FontWeight.w900),
      ),
    );
  }
}
