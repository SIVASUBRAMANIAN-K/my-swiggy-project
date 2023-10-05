import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:siva/phone.dart';
import 'forgetpass.dart';
import 'widgetbutton.dart';
import 'package:siva/signin.dart';
import 'list.dart';

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange),
      title: 'Login Page',
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
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
                        controller: _emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email.';
                          }
                          return null; // Validation passed
                        },
                        labelText: 'Email',
                        obscureText: false,
                        width: null,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
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
                        width: null,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 210),
                      child: TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPasswordPage()),
                          );
                        },
                        child: Text("Forget Password?"),
                      ),
                    ),
                    button(
                      onPressed: () async {
                        try {
                          UserCredential userCredential = await FirebaseAuth
                              .instance
                              .signInWithEmailAndPassword(
                            email: _emailController.text,
                            password: _passwordController.text,
                          );

                          User? user = userCredential.user;
                          print('Signed in: ${user!.uid}');
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => phone()));
                        } catch (e) {
                          print('Sign-in error: $e');
                        }

                        //signup screen
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 20, color: Colors.white),
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
                              'Sign Up!',
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
