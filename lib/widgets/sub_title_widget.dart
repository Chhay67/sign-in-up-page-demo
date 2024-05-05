import 'package:flutter/material.dart';

class SubTitleWidget extends StatelessWidget {
  const SubTitleWidget({super.key, required this.subTitle});
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      style: const TextStyle(
          color: Colors.grey, fontWeight: FontWeight.w400, fontSize: 14),
    );
  }
}
