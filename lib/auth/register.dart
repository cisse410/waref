import 'package:flutter/material.dart';
import 'package:waref/auth/button.dart';
import 'package:waref/routes/routes.dart';
import 'package:waref/widgets/default_appbar.dart';

import 'input_password_field.dart';
import 'input_text_field.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 2, 2, 6),
      appBar: const MainAppBar(title: "inscription"),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const InputTextField(
                hintText: "Name",
              ),
              const InputTextField(
                hintText: "Username",
              ),
              const InputPasswordField(
                hintText: "Password",
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Déjà inscrit?",
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(RouteManager.login);
                        },
                        child: const Text(
                          "Se connecter",
                          style: TextStyle(color: Colors.blue, fontSize: 19),
                        )),
                  ],
                ),
              ),
              const Button(content: "S'inscrire")
            ],
          ),
        ),
      ),
    );
  }
}
