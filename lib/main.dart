import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:login_app/src/app.dart';
import 'package:login_app/src/providers/login_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();

  runApp(ChangeNotifierProvider<LoginProvider>(
    child: const MyApp(),
    create: (_) => LoginProvider(),
  ));
}
