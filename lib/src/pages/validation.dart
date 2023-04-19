import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_app/src/pages/login.dart';
import 'package:login_app/src/pages/welcome.dart';

class ValidationPage extends StatelessWidget {
  const ValidationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const WelcomePage();
          } else {
            return const LoginPage();
          }
        },
      ),
    );
  }
}
