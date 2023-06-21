import 'package:flutter/material.dart';
// ignore: unused_import

class txtfld extends StatefulWidget {
  final String labelText;
  final bool obscureText;
  final TextEditingController controller;
  final InputDecoration? decoration;
  final onTap;
  final String? Function(dynamic value) validator;

  txtfld({
    Key? key,
    required this.controller,
    this.decoration,
    required this.obscureText,
    required this.labelText,
    required this.validator,
    this.onTap,
  }) : super(key: key);

  @override
  State<txtfld> createState() => _txtfldState();
}

class _txtfldState extends State<txtfld> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: widget.validator,
      controller: widget.controller,
      obscureText: widget.obscureText,
      onTap: widget.onTap,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: widget.labelText,
      ),
    );
  }
}
