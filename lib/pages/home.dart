import 'package:flutter/material.dart';
import 'package:waref/widgets/default_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MainAppBar(
        title: "Accueil",
      ),
    );
  }
}
