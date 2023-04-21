import 'package:firebase_auth/firebase_auth.dart';
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

  Future signUp() async {
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email.text, password: password.text);
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Icon(
          Icons.account_circle,
          size: 120.0,
          color: Color.fromARGB(255, 69, 69, 69),
        ),
        const Text(
          'Join us',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 275,
          child: TextField(
            controller: email,
            keyboardType: TextInputType.emailAddress,
            decoration: ThemeStyle.emailFormField,
          ),
        ),
        const SizedBox(height: 20),
        SizedBox(
          width: 275,
          child: TextField(
            controller: password,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: ThemeStyle.passwordFormField,
          ),
        ),
        /*  const SizedBox(height: 20),
        SizedBox(
          width: 275,
          child: TextField(
            controller: confirmation,
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: ThemeStyle.passwordConfirmationFormField,
          ),
        ), */
        const SizedBox(height: 25),
        ElevatedButton(onPressed: signUp, child: const Text('Sign Up'))
      ]),
    ));
  }
}
