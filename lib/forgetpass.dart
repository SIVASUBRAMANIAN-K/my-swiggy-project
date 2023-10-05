import 'package:flutter/material.dart';
import 'package:siva/list.dart';
import 'package:siva/widgetbutton.dart';

import 'login.dart';

class ForgotPasswordPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _resetPassword() {
    // TODO: Implement password reset logic
    String email = _emailController.text;
    // Perform password reset operation here
    print('Reset password for $email');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text('Forgot Password'),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Forgot Your Password?',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            txtfld(
                obscureText: false,
                controller: _emailController,
                labelText: 'Email',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password.';
                  }
                  return null; // Validation passed
                },
                width: 110),
            txtfld(
                obscureText: false,
                labelText: 'Password',
                controller: _passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password.';
                  }
                  return null; // Validation passed
                },
                width: 110),
            txtfld(
                obscureText: false,
                labelText: 'Confirm Password',
                controller: _passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password.';
                  }
                  return null; // Validation passed
                },
                width: 110),
            SizedBox(height: 16),
            button(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginApp()),
                );
              },
              child: Text(
                'Reset Password',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
