import 'package:flutter/material.dart';
import 'package:waref/auth/input_password_field.dart';
import 'package:waref/auth/input_text_field.dart';
import 'package:waref/routes/routes.dart';
import 'package:waref/widgets/default_appbar.dart';

import 'button.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(0, 2, 2, 6),
      appBar: const MainAppBar(
        title: "connexion",
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
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
                      "Je suis nouveau ici?",
                      style: TextStyle(color: Colors.white, fontSize: 19),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(RouteManager.register);
                        },
                        child: const Text(
                          "M'inscrire",
                          style: TextStyle(color: Colors.blue, fontSize: 19),
                        )),
                  ],
                ),
              ),
              const Button(
                content: "Se conecter",
              ),
            ],
          ),
        ),
      ),
    );
  }
}