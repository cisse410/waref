import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.content,
  });

  final String content;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
          foregroundColor: Colors.teal,
          backgroundColor: const Color.fromARGB(0, 2, 2, 6)),
      child: Text(content),
    );
  }
}
