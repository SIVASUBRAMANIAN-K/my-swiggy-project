import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:siva/home.dart';
import 'package:siva/phone.dart';
import 'package:siva/widgetbutton.dart';

class otp extends StatefulWidget {
  const otp({super.key});

  @override
  State<otp> createState() => _otpState();
}

class _otpState extends State<otp> {
  bool _isResendAgain = false;
  bool _ispinput = false;
  String _code = '';

  late Timer _timer;
  int _start = 60;

  void resend() {
    setState(() {
      _isResendAgain = true;
    });

    var oneSec = Duration(seconds: 1);
    _timer = new Timer.periodic(oneSec, (timer) {
      setState(() {
        if (_start == 0) {
          _start = 60;
          _isResendAgain = false;
          timer.cancel();
        } else {
          _start--;
        }
      });
    });
  }

  verify() {
    var oneSec = Duration(microseconds: 10000);
    _timer = new Timer.periodic(oneSec, (timer) {
      setState(() {
        _ispinput = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, right: 320),
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
                onPressed: () {
                  // Perform your desired action here
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => phone()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Verify with OTP sent to\n your Moblie Number',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 0),
              child: Pinput(
                length: 6,
                showCursor: true,
                keyboardType: TextInputType.number,
                onCompleted: (value) {
                  setState(() {
                    _code = value;
                  });
                },
                defaultPinTheme: PinTheme(
                  height: 55,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                      )),
                  textStyle: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
              child: button(
                onPressed: _code.length < 6
                    ? null
                    : () {
                        verify();
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SwiggyHomePage()));
                      },
                child: Text(
                  'Continue',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  "Didn't  recieve it? ",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal),
                ),
                TextButton(
                  onPressed: () {
                    if (_isResendAgain) return;

                    resend();
                  },
                  child: Text(
                    _isResendAgain ? "Try in " + _start.toString() : 'Resend',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
