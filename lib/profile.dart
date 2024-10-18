// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:siva/home.dart';
import 'login.dart';

class ProfileApp extends StatelessWidget {
  const ProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            // Perform your desired action here
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SwiggyHomePage()),
            );
          },
        ),
        title: const Padding(
          padding: EdgeInsets.only(left: 50),
          child: Text(
            'Profile Page',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 16.0),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    'SIVA'),
              ),
              const SizedBox(height: 10.0),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                    style: TextStyle(fontSize: 15),
                    '+91-xxxxxxxx98 . xxxxxxxx@gmail.com'),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Text(style: TextStyle(fontSize: 16), 'My Account'),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 10),
                    child: Text(
                        style: TextStyle(fontSize: 11),
                        'Favourites, Hidden restaurants\n & Settings'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: DropdownButton(
                      items: <DropdownMenuItem>[
                        DropdownMenuItem(
                          value: 'Option 1',
                          child: TextButton(
                            onPressed: () {
                              // Respond to button press
                            },
                            child: const Text(
                              "Favourites",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'Option 2',
                          child: TextButton(
                            onPressed: () {
                              // Respond to button press
                            },
                            child: const Text(
                              "Hidden Restaurants",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'Option 3',
                          child: TextButton(
                            onPressed: () {
                              // Respond to button press
                            },
                            child: const Text(
                              "Settings",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15, left: 15),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.black,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Text(style: TextStyle(fontSize: 16), 'Address'),
              ),
              const SizedBox(height: 5.0),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 10),
                    child: Text(
                        style: TextStyle(fontSize: 12),
                        'Share, Edit & Add New Address'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 180),
                    child: Icon(Icons.arrow_right),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15, left: 15),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.black,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child:
                    Text(style: TextStyle(fontSize: 16), 'Payments & Refunds '),
              ),
              Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 10),
                    child: Text(
                        style: TextStyle(fontSize: 12),
                        'Refund Status & Payment Modes'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: DropdownButton(
                      items: <DropdownMenuItem>[
                        DropdownMenuItem(
                          value: 'Option 1',
                          child: TextButton(
                            onPressed: () {
                              // Respond to button press
                            },
                            child: const Text(
                              "Refund Status",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ),
                        DropdownMenuItem(
                          value: 'Option 2',
                          child: TextButton(
                            onPressed: () {
                              // Respond to button press
                            },
                            child: const Text(
                              "Payment Modes",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          ),
                        ),
                      ],
                      onChanged: (value) {},
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15, left: 15),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.black,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Text(style: TextStyle(fontSize: 16), 'Swiggy Money'),
              ),
              const SizedBox(height: 5.0),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 10),
                    child: Text(
                        style: TextStyle(fontSize: 12),
                        'View Account Balance & Transaction History'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 110),
                    child: Icon(Icons.arrow_right),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15, left: 15),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.black,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                    style: TextStyle(fontSize: 16), 'Refer & Earn Program'),
              ),
              const SizedBox(height: 5.0),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 10),
                    child: Text(
                        style: TextStyle(fontSize: 11),
                        'Refer friends and earn cashback'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 180),
                    child: Icon(Icons.arrow_right),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    width: 400,
                    height: 80,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 228, 223, 223),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, right: 200),
                          child: Text(
                            'Did you know?',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(6.0),
                          child: Text(
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                              ),
                              'you will get a cash back when your friends place order\n using the invite.'),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15, left: 15),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.black,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child: Text(
                    style: TextStyle(fontSize: 16), 'Redeem 3rd-Party Coupon'),
              ),
              const SizedBox(height: 5.0),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 10),
                    child: Text(
                        style: TextStyle(fontSize: 11),
                        'Avail corporate or third-party discounts on Swiggy One\n membership'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Icon(Icons.arrow_right),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(right: 15, left: 15),
                child: Divider(
                  thickness: 0.5,
                  color: Colors.black,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(style: TextStyle(fontSize: 16), 'Help'),
              ),
              const SizedBox(height: 5.0),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 10),
                    child: Text(style: TextStyle(fontSize: 12), 'FAQs & Links'),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 280),
                    child: Icon(Icons.arrow_right),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: Divider(
                  thickness: 30,
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    child: Row(
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.only(left: 20, top: 20, bottom: 20),
                          child: Text(
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                              'LOGOUT OPTIONS'),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 190),
                          child: Icon(Icons.arrow_right),
                        ),
                      ],
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginApp(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 5.0),
              const Padding(
                padding: EdgeInsets.only(top: 10),
                child: Divider(
                  thickness: 30,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
