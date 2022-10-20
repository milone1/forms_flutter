import 'package:flutter/material.dart';
import 'package:forms_flutter/widgets/widgets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: Container(
          width: double.infinity,
          height: 300,
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}
