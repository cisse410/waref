import 'package:flutter/material.dart';

class MainAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainAppBar({super.key, required this.title});
  final String title;

  @override
  Size get preferredSize => const Size.fromHeight(60.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title.toUpperCase(),
        style: const TextStyle(color: Colors.white, fontSize: 30.0),
      ),
      backgroundColor: Colors.teal,
      centerTitle: true,
    );
  }
}
