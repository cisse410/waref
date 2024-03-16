import 'package:flutter/material.dart';

class TextAreaField extends StatelessWidget {
  const TextAreaField({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        keyboardType: TextInputType.text,
        maxLines: 8,
        decoration: InputDecoration.collapsed(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
