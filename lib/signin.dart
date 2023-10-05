import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:siva/list.dart';
import 'login.dart';
import 'widgetbutton.dart';

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
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();
  final _controller = TextEditingController();
  final CollectionReference _usersCollection =
      FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    final String docId = _usersCollection.doc().id;

    // Create a new document with the generated ID
    final DocumentReference documentReference = _usersCollection.doc(docId);

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
                SizedBox(
                  height: 10,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      txtfld(
                        controller: _usernameController,
                        labelText: 'Name',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your username.';
                          }
                          return null; // Validation passed
                        },
                        obscureText: false,
                        width: null,
                      ),
                      SizedBox(height: 10.0),
                      txtfld(
                        controller: _phoneNumberController,
                        obscureText: false,
                        labelText: 'Phone Number',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your phone number.';
                          }
                          return null; // Validation passed
                        },
                        width: null,
                      ),
                      SizedBox(height: 10.0),
                      txtfld(
                        controller: _emailController,
                        obscureText: false,
                        labelText: 'Email',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your email id.';
                          }
                          return null; // Validation passed
                        },
                        width: null,
                      ),
                      SizedBox(height: 10.0),
                      txtfld(
                        controller: _passwordController,
                        obscureText: false,
                        labelText: 'Password',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your valid address.';
                          }
                          return null; // Validation passed
                        },
                        width: null,
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      Row(
                        children: [
                          txtfld(
                            obscureText: false,
                            labelText: 'Date of birth',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your date of birth.';
                              }
                              return null; // Validation passed
                            },
                            width: 130,
                          ),
                          txtfld(
                            controller: _controller,
                            obscureText: false,
                            labelText: 'Gender',
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter your gender.';
                              }
                              return null; // Validation passed
                            },
                            width: 145,
                          ),
                        ],
                      ),

                      button(
                        child: Text(
                          'Sign up',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        onPressed: () async {
                          try {
                            final username = _usernameController.text;
                            final email = _emailController.text;
                            final phone = _phoneNumberController.text;
                            final pass = _passwordController.text;
                            final gender = _controller.text;
                            await documentReference.set({
                              'Name': username,
                              'Email': email,
                              'Password': pass,
                              'Phone number': phone,
                              'Gender': gender,
                            });
                            await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                              email: _emailController.text,
                              password: _passwordController.text,
                            );
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginApp()),
                            );
                          } catch (e) {
                            _formKey.currentState!.validate();
                          }
                        },
                      ),
                      // Set the child widget within the container
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
