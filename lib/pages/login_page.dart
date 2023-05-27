import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text("Login Page",
          style: TextStyle(
            fontSize: 20,
            color: Colors.lightGreen,
            fontWeight: FontWeight.bold,
            fontFamily: AutofillHints.birthday,
          ),
          textScaleFactor: 1.5,
        ),
      ),
    );
  }
}