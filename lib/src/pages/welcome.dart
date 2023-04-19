import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
//import 'package:login_app/src/providers/login_provider.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text('welcome back ${user?.email}'),
          ElevatedButton(
              onPressed: () => {
                    setState(() {
                      //Navigator.pushNamed(context, '/login');
                      FirebaseAuth.instance.signOut();
                    })
                  },
              child: const Text('Log out'))
        ])));
  }
}
