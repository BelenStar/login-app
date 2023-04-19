import 'package:flutter/material.dart';
//import 'package:login_app/src/models/login_item.dart';
//import 'package:provider/provider.dart';
//import 'package:login_app/src/providers/login_provider.dart';
import 'package:login_app/src/styles/styles.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  Future signIn() async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email.text, password: password.text);
    //email.clear();
    //password.clear();
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //final users = context.watch<LoginProvider>().users;
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
            child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(height: 10),
            const Icon(
              Icons.account_circle,
              size: 120.0,
              color: Color.fromARGB(255, 69, 69, 69),
            ),
            const SizedBox(height: 20),
            const Text(
              'Hello fulks!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            const SizedBox(height: 40),
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
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: signIn
              /* onPressed: () => {
            setState(() {
              if (email.text.isEmpty && password.text.isEmpty) {
                return;
              } else {
                users
                    .add(LoginItem(email: email.text, password: password.text));
                email.clear();
                password.clear();

                Navigator.pushNamed(context, '/welcome');
              }
            })
          } */
              ,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color.fromARGB(255, 161, 52, 229),
                ),
              ),
              child: const Text('Sign in'),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Dont have an account? '),
                TextButton(
                    onPressed: () => {
                          setState(() {
                            Navigator.pushNamed(context, '/register');
                          })
                        },
                    child: Text('Sign Up',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.deepPurple[300])))
              ],
            )
          ]),
        )));
  }
}
