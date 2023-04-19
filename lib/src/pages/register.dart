import 'package:flutter/material.dart';

import '../styles/styles.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final email = TextEditingController();
  final password = TextEditingController();
  final confirmation = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          Icons.account_circle,
          size: 120.0,
          color: Color.fromARGB(255, 69, 69, 69),
        ),
        Text(
          'Join us',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        TextField(
          controller: email,
          keyboardType: TextInputType.emailAddress,
          decoration: ThemeStyle.emailFormField,
        ),
        TextField(
          controller: password,
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          decoration: ThemeStyle.passwordFormField,
        ),
        TextField(
          controller: confirmation,
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          decoration: ThemeStyle.passwordFormField,
        ),
        ElevatedButton(onPressed: null, child: null)
      ]),
    ));
  }
}
