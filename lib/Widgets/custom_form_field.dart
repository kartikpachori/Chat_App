import 'package:flutter/material.dart';

class CustomFormField extends StatelessWidget {
  final String hintText;
  final double height;
  final RegExp validationRegEx;
  final bool obscureText;

  const CustomFormField(
      {super.key,
      required this.hintText,
      required this.height,
      required this.validationRegEx,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        obscureText: obscureText,
        validator: (value) {
          // if (value == null || !validationRegEx.hasMatch(value)) {
          //   return "Enter a valid ${hintText.toLowerCase()}";
          // }
          // return null;
          if (value != null && validationRegEx.hasMatch(value)) {
            return null;
          }
          return "Enter a valid ${hintText.toLowerCase()}";
        },
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(),
        ),
      ),
    );
  }
}
