import 'package:flutter/material.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    super.key,
    required this.hintText,
  });
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(12),
          ),
          filled: true,
          fillColor: Colors.white,
          isDense: true,
          prefixIcon: const Icon(Icons.person),
          hintText: hintText,
        ),
        cursorColor: Colors.teal,
        keyboardType: TextInputType.text,
      ),
    );
  }
}
