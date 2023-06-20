// ignore: unused_import
import 'package:flutter/material.dart';
import 'home.dart';
// ignore: unused_import
import 'profile.dart';

// ignore: unused_import
import 'login.dart';

class SignApp extends StatelessWidget {
  const SignApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const SignPage(),
    );
  }
}

class SignPage extends StatefulWidget {
  const SignPage({super.key});

  @override
  State<SignPage> createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void _signup() {
    String username = _usernameController.text;

    String password = _passwordController.text;
    if (username.isEmpty || password.isEmpty) {
      // Show an error message or perform other actions
      return;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Center(
        child: Container(
          width: 350, // Set the width of the container
          height: 600, // Set the height of the container
          color: Colors.white, // Set the background color of the container
          margin: const EdgeInsets.only(
              top: 25), // Set the margin around the container
          padding: const EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 16), // Set the padding inside the container
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  textAlign: TextAlign.center,
                  'Sign Up!',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                const Image(image: AssetImage('assets/sign.jpg')),
                const SizedBox(height: 20.0),
                const TextField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                  ),
                ),
                const SizedBox(height: 20.0),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Phone number',
                  ),
                ),
                const SizedBox(height: 20.0),
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Email ',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: SizedBox(
                    height: 50.0,
                    width: 800,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SwiggyHomePage()),
                        ); //signup screen
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                // Set the child widget within the container
              ],
            ),
          ),
        ),
      ),
    );
  }
}
