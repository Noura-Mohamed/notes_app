import 'package:flutter/material.dart';

class CustomTextFeiled extends StatelessWidget {
  const CustomTextFeiled({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.onSaved,
  });

  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        } else {
          return null;
        }
      },
      cursorColor: Colors.cyanAccent,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: Colors.cyanAccent),
        enabledBorder: buildBorder(color: Colors.white),
        focusedBorder: buildBorder(color: Colors.cyanAccent),
      ),
    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color),
    );
  }
}
