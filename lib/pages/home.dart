import 'package:flutter/material.dart';
import 'package:waref/routes/routes.dart';
import 'package:waref/widgets/default_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(
        title: "Accueil",
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {
          Navigator.of(context).pushNamed(RouteManager.showTask);
        },
        child: const Icon(Icons.add, color: Colors.white,),
      ),
    );
  }
}
