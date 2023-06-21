// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:siva/list.dart';
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
  final _formKey = GlobalKey<FormState>();
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneNumberController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _controller = TextEditingController();

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
                      ),
                      SizedBox(height: 10.0),
                      txtfld(
                        controller: _addressController,
                        obscureText: false,
                        labelText: 'Address',
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your valid address.';
                          }
                          return null; // Validation passed
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),

                      txtfld(
                        controller: _controller,
                        obscureText: false,
                        labelText: 'Date of birth',
                        onTap: () async {
                          DateTime? date = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime.now(),
                          );
                        },
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your date of birth.';
                          }
                          return null; // Validation passed
                        },
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
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 50),
                        child: SizedBox(
                          height: 50.0,
                          width: 800,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                final username = _usernameController.text;
                                final email = _emailController.text;
                                final phonenumber = _phoneNumberController.text;
                                final address = _addressController.text;
                                if (username.isNotEmpty &&
                                    email.isNotEmpty &&
                                    phonenumber.isNotEmpty &&
                                    address.isNotEmpty) {
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
                            child: const Text(
                              'Sign up',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
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
