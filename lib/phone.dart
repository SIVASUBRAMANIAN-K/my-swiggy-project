import 'package:country_picker/country_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:siva/login.dart';
import 'package:siva/widgetbutton.dart';
import 'otp.dart';

class phone extends StatefulWidget {
  const phone({super.key});

  @override
  State<phone> createState() => _phoneState();
}

class _phoneState extends State<phone> {
  final _formKey = GlobalKey<FormState>();
  final _phoneController = TextEditingController();
  Country selectedCountry = Country(
    phoneCode: '',
    countryCode: 'IN',
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: 'India',
    example: 'India',
    displayName: 'India',
    displayNameNoCountryCode: 'IN',
    e164Key: '',
  );

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
                    MaterialPageRoute(builder: (context) => LoginApp()),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Enter your mobile number \nto get OTP',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      controller: _phoneController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Enter Phone number',
                        hintStyle: TextStyle(fontWeight: FontWeight.w500),
                        border: OutlineInputBorder(),
                        prefixIcon: Container(
                          child: InkWell(
                            onTap: () {
                              showCountryPicker(
                                  context: context,
                                  countryListTheme: CountryListThemeData(
                                      bottomSheetHeight: 500),
                                  onSelect: (value) {
                                    setState(() {
                                      selectedCountry = value;
                                    });
                                  });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 12, left: 20, right: 10),
                              child: Text(
                                '${selectedCountry.flagEmoji} +${selectedCountry.phoneCode}',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your Phone number.';
                        }
                        return null; // Validation passed
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: button(
                      onPressed: () async {
                        try {
                          FirebaseAuth auth = FirebaseAuth.instance;
                          await FirebaseAuth.instance.verifyPhoneNumber(
                            phoneNumber: '+' + _phoneController.text,
                            verificationCompleted:
                                (PhoneAuthCredential credential) async {
                              await auth.signInWithCredential(credential);
                            },
                            verificationFailed: (FirebaseAuthException e) {},
                            codeSent:
                                (String verificationId, int? resendToken) {},
                            codeAutoRetrievalTimeout:
                                (String verificationId) {},
                          );
                        } catch (e) {
                          print('otp error: $e');
                        }

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => otp()));
                      },
                      child: Text(
                        'Get OTP',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('By clicking, I accept the'),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'terms of service',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Text('and'),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'privacy',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 310, bottom: 0),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'policy',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
