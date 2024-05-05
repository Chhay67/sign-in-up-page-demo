import 'package:flutter/material.dart';

class HaveAnyAccount extends StatelessWidget {
  const HaveAnyAccount(
      {super.key,
      required this.btnText,
      required this.onTap,
      required this.title});
  final String title;
  final String btnText;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.normal),
          ),
          const SizedBox(width: 10),
          InkWell(
            onTap: onTap,
            child: Text(
              btnText,
              style: const TextStyle(
                decoration: TextDecoration.underline,
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.normal,
              ),
            ),
          )
        ],
      ),
    );
  }
}
