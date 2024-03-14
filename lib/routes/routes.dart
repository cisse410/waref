import 'package:flutter/material.dart';
import 'package:waref/pages/add_task.dart';
import 'package:waref/pages/home.dart';
import 'package:waref/pages/show_tasks.dart';

class RouteManager {
  static const String homePage = '/';
  static const String addTask = '/addTask';
  static const String showTask = '/showTask';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(
          builder: (context) => const HomePage(),
        );
      case addTask:
        return MaterialPageRoute(builder: (context) => const AddTask());
      case showTask:
        return MaterialPageRoute(
          builder: (context) => const ShowTask()
        );
      default:
        throw const FormatException("Verifiez la route specifiée");
    }
  }
}
