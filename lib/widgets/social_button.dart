import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.icon, required this.onTap});
  final IconData icon;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey.shade300,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(8),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
            vertical: 8,
          ),
          child: Icon(icon, size: 32),
        ),
      ),
    );
  }
}
