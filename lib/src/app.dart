import 'package:flutter/material.dart';
import 'package:login_app/src/pages/login.dart';
import 'package:login_app/src/pages/register.dart';
import 'package:login_app/src/pages/welcome.dart';
import 'package:login_app/src/pages/validation.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const ValidationPage(),
        routes: <String, WidgetBuilder>{
          '/login': (context) => const LoginPage(),
          '/welcome': (context) => const WelcomePage(),
          '/register': (context) => const RegisterPage(),
        });
  }
}
