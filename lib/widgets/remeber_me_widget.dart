import 'package:flutter/material.dart';

class RemeberMeWidget extends StatelessWidget {
  const RemeberMeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: false,
          onChanged: (value) {},
        ),
        Text(
          'Remember me',
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.normal),
        )
      ],
    );
  }
}
