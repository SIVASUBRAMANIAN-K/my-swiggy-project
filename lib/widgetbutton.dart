import 'package:flutter/material.dart';

class button extends StatefulWidget {
  final void Function()? onPressed;
  final Widget? child;

  button({
    Key? key,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  State<button> createState() => _buttonState();
}

class _buttonState extends State<button> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 50.0,
        width: 800,
        child: ElevatedButton(
          onPressed: widget.onPressed,
          child: widget.child,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.orange, // Change the button color here
          ),
        ),
      ),
    );
  }
}
