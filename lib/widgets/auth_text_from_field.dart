import 'package:flutter/material.dart';

class AuthTextFromField extends StatelessWidget {
  const AuthTextFromField(
      {super.key,
      required this.label,
      this.trialingLabel,
      this.hintText,
      this.controller,
      this.obscureText = false,
      this.suffixIcon,
      this.validator});
  final String label;
  final Widget? trialingLabel;
  final String? hintText;
  final TextEditingController? controller;
  final String? Function(String? value)? validator;
  final bool obscureText;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12, top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.normal),
              ),
              if (trialingLabel != null) trialingLabel!,
            ],
          ),
          TextFormField(
            controller: controller,
            validator: validator,
            autocorrect: true,
            obscureText: obscureText,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              isDense: true,
              filled: true,
              fillColor: Colors.white,
              hintText: hintText,
              suffixIcon: suffixIcon,
              hintStyle: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.normal),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey.shade400, width: 2),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey.shade400, width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.grey.shade400, width: 2),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(color: Colors.red, width: 2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
