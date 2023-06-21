import 'package:flutter/material.dart';

import 'package:siva/signin.dart';
// ignore: unused_import
import 'home.dart';
import 'list.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      title: 'Login Page',
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 70,
              ),
              Image.network(
                // <-- SEE HERE
                'https://1000logos.net/wp-content/uploads/2021/05/Swiggy-emblem.png',
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: txtfld(
                        controller: _usernameController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your username.';
                          }
                          return null; // Validation passed
                        },
                        labelText: 'Username',
                        obscureText: false,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: txtfld(
                        controller: _passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password.';
                          }
                          return null; // Validation passed
                        },
                        labelText: 'Password',
                        obscureText: true,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 50),
                      child: SizedBox(
                        height: 50.0,
                        width: 800,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              final username = _usernameController.text;
                              final password = _passwordController.text;
                              if (username.isNotEmpty && password.isNotEmpty) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SwiggyHomePage(),
                                  ),
                                );
                              }

                              // Perform authentication logic here
                              // ...
                            } //signup screen
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // ignore: sort_child_properties_last
                        children: [
                          Text('Does not have account?'),
                          TextButton(
                            child: Text(
                              'Sign in',
                              style: TextStyle(fontSize: 20),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignApp()),
                              ); //signup screen
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
