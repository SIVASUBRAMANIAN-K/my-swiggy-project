import 'package:flutter/material.dart';
// ignore: unused_import

class txtfld extends StatefulWidget {
  final String labelText;
  final bool obscureText;
  final TextEditingController? controller;
  final InputDecoration? decoration;
  final onTap;
  final String? Function(dynamic value) validator;
  final double? width;

  txtfld({
    Key? key,
    this.controller,
    this.decoration,
    required this.obscureText,
    required this.labelText,
    required this.validator,
    this.onTap,
    required this.width,
  }) : super(key: key);

  @override
  State<txtfld> createState() => _txtfldState();
}

class _txtfldState extends State<txtfld> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
        width: widget.width,
        child: TextFormField(
          validator: widget.validator,
          controller: widget.controller,
          obscureText: widget.obscureText,
          onTap: widget.onTap,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: widget.labelText,
          ),
        ),
      ),
    );
  }
}
