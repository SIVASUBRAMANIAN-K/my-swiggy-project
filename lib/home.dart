import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:carousel_slider/carousel_slider.dart';

import 'profile.dart';
import 'nxt.dart';

class SwiggyHomePage extends StatefulWidget {
  const SwiggyHomePage({super.key});

  @override
  State<SwiggyHomePage> createState() => _SwiggyHomePageState();
}

class _SwiggyHomePageState extends State<SwiggyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20),
              child: Row(
                children: [
                  Icon(Icons.location_pin),
                  Text(
                    'Indra Nagar',
                    style: TextStyle(fontSize: 20),
                  ),
                  Icon(Icons.arrow_drop_down),
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                      'Teachers Colony, Indra nagar, Thoothukudi,tamil ...'),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ProfileApp()),
                    );
                  },
                  icon: Icon(Icons.person),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for dishes & restaurants ',
                  suffixIcon: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: Icon(Icons.search),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Icon(Icons.mic),
                      ),
                    ],
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                height: 150,
                width: 390,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/home.jpeg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 130, bottom: 20),
              child: Text(
                "Siva, what's on your mind?",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/biriyani.jpeg',
                        width: 150,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                    ClipOval(
                      child: Image.asset(
                        'assets/shake.jpg',
                        width: 150,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                    ClipOval(
                      child: Image.asset(
                        'assets/pizza.jpg',
                        width: 150,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                    ClipOval(
                      child: Image.asset(
                        'assets/parotta.jpg',
                        width: 150,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/south.jpg',
                        width: 150,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                    ClipOval(
                      child: Image.asset(
                        'assets/icec.jpg',
                        width: 150,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                    ClipOval(
                      child: Image.asset(
                        'assets/burger.jpg',
                        width: 150,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                    ClipOval(
                      child: Image.asset(
                        'assets/chi.jpg',
                        width: 150,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InputChip(
                      avatar: Icon(Icons.filter),
                      label: Text('Filter'),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InputChip(
                      label: Text('sort by'),
                      avatar: Icon(Icons.arrow_drop_down),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InputChip(
                      label: Text('Fast Delivery'),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InputChip(
                      label: Text('Cuisines'),
                      avatar: Icon(Icons.arrow_drop_down),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: InputChip(
                      label: Text('Ratings 4.0+'),
                      selected: true,
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: InputChip(
                      label: Text('Offers'),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 200.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  viewportFraction: 0.8,
                ),
                items: [
                  Image.asset(
                    'assets/blue.jpeg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/savage.jpeg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/orange.jpeg',
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/violet.jpeg',
                    fit: BoxFit.cover,
                  ),
                  // Add more images as needed
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 170, bottom: 10, top: 20),
              child: Text(
                'Restaurants to explore',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            GestureDetector(
              child: Container(
                height: 180,
                child: Row(
                  children: [
                    Expanded(
                      child: Image.asset(
                        'assets/cheti.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 90),
                      child: Icon(
                        Icons.favorite_border_outlined,
                        size: 25.0,
                      ),
                    ),
                    Column(
                      children: [
                        Expanded(
                          child: Container(
                            child: Row(
                              children: [
                                Text(
                                  '  Karunas Chettinadu..',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                PopupMenuButton<int>(
                                  itemBuilder: (context) => [
                                    PopupMenuItem<int>(
                                      value: 1,
                                      child: Text('hiiii'),
                                    ),
                                    PopupMenuItem<int>(
                                      value: 2,
                                      child: Text('Menu Item 2'),
                                    ),
                                    PopupMenuItem<int>(
                                      value: 3,
                                      child: Text('Menu Item 3'),
                                    ),
                                  ],
                                  onSelected: (value) {},
                                  child: IconButton(
                                    icon: Icon(Icons.more_vert),
                                    onPressed: () {},
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 70),
                                  child: Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.green,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 0, right: 70),
                                  child: Column(
                                    children: [
                                      Text(
                                        '4.0 (1K+) . 18 mins',
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 10),
                                        child: Text(
                                          '     Chinese, North Indian,South...\n     Meenakshipuram 3.0 km',
                                          style: TextStyle(
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 70),
                                  child: OutlinedButton.icon(
                                    onPressed: () {
                                      // Respond to button press
                                    },
                                    icon: Icon(
                                      Icons.directions_bike_sharp,
                                      size: 18,
                                      color: Color.fromARGB(255, 175, 3, 244),
                                    ),
                                    label: Text(
                                      "FREE DELIVERY",
                                      style: TextStyle(
                                          color:
                                              Color.fromARGB(255, 175, 3, 244)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewPage()),
                );
              },
            ),
            Container(
              height: 180,
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/oya.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 90),
                    child: Icon(
                      Icons.favorite_border_outlined,
                      size: 25.0,
                    ),
                  ),
                  Column(
                    children: [
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Text(
                                '  OYALO Pizza',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              PopupMenuButton<int>(
                                itemBuilder: (context) => [
                                  PopupMenuItem<int>(
                                    value: 1,
                                    child: Text('hiiii'),
                                  ),
                                  PopupMenuItem<int>(
                                    value: 2,
                                    child: Text('Menu Item 2'),
                                  ),
                                  PopupMenuItem<int>(
                                    value: 3,
                                    child: Text('Menu Item 3'),
                                  ),
                                ],
                                onSelected: (value) {},
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: IconButton(
                                    icon: Icon(Icons.more_vert),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 70),
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.green,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 0, right: 70),
                                child: Column(
                                  children: [
                                    Text(
                                      '4.4 (50+) . 20 mins',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        'Pizzas...   \nMeenakshipuram 0.5 km',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 80),
                                child: OutlinedButton.icon(
                                  onPressed: () {
                                    // Respond to button press
                                  },
                                  icon: Icon(
                                    Icons.directions_bike_sharp,
                                    size: 18,
                                    color: Color.fromARGB(255, 175, 3, 244),
                                  ),
                                  label: Text(
                                    "FREE DELIVERY",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 175, 3, 244)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 180,
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/kwa.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 90),
                    child: Icon(
                      Icons.favorite_border_outlined,
                      size: 25.0,
                    ),
                  ),
                  Column(
                    children: [
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Text(
                                '  Kwality Walls',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              PopupMenuButton<int>(
                                itemBuilder: (context) => [
                                  PopupMenuItem<int>(
                                    value: 1,
                                    child: Text('hiiii'),
                                  ),
                                  PopupMenuItem<int>(
                                    value: 2,
                                    child: Text('Menu Item 2'),
                                  ),
                                  PopupMenuItem<int>(
                                    value: 3,
                                    child: Text('Menu Item 3'),
                                  ),
                                ],
                                onSelected: (value) {},
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: IconButton(
                                    icon: Icon(Icons.more_vert),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 70),
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.green,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 0, right: 70),
                                child: Column(
                                  children: [
                                    Text(
                                      '4.5 (1K+) . 16 mins',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        'Desserts,Ice Cream,Ice Cre..   \nMeenakshipuram 2.2 km',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 80),
                                child: OutlinedButton.icon(
                                  onPressed: () {
                                    // Respond to button press
                                  },
                                  icon: Icon(
                                    Icons.directions_bike_sharp,
                                    size: 18,
                                    color: Color.fromARGB(255, 175, 3, 244),
                                  ),
                                  label: Text(
                                    "FREE DELIVERY",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 175, 3, 244)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 180,
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/siron.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 90),
                    child: Icon(
                      Icons.favorite_border_outlined,
                      size: 25.0,
                    ),
                  ),
                  Column(
                    children: [
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Text(
                                '  Siron Juice Park',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              PopupMenuButton<int>(
                                itemBuilder: (context) => [
                                  PopupMenuItem<int>(
                                    value: 1,
                                    child: Text('hiiii'),
                                  ),
                                  PopupMenuItem<int>(
                                    value: 2,
                                    child: Text('Menu Item 2'),
                                  ),
                                  PopupMenuItem<int>(
                                    value: 3,
                                    child: Text('Menu Item 3'),
                                  ),
                                ],
                                onSelected: (value) {},
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: IconButton(
                                    icon: Icon(Icons.more_vert),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 70),
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.green,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 0, right: 70),
                                child: Column(
                                  children: [
                                    Text(
                                      '4.2 (10K+) . 19 mins',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        'Desserts,Ice Cream,Pizzas   \nMeenakshipuram 3.0 km',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 80),
                                child: OutlinedButton.icon(
                                  onPressed: () {
                                    // Respond to button press
                                  },
                                  icon: Icon(
                                    Icons.directions_bike_sharp,
                                    size: 18,
                                    color: Color.fromARGB(255, 175, 3, 244),
                                  ),
                                  label: Text(
                                    "FREE DELIVERY",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 175, 3, 244)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 180,
              child: Row(
                children: [
                  Expanded(
                    child: Image.asset(
                      'assets/kfc.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 90),
                    child: Icon(
                      Icons.favorite_border_outlined,
                      size: 25.0,
                    ),
                  ),
                  Column(
                    children: [
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Text(
                                '  KFC',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              PopupMenuButton<int>(
                                itemBuilder: (context) => [
                                  PopupMenuItem<int>(
                                    value: 1,
                                    child: Text('hiiii'),
                                  ),
                                  PopupMenuItem<int>(
                                    value: 2,
                                    child: Text('Menu Item 2'),
                                  ),
                                  PopupMenuItem<int>(
                                    value: 3,
                                    child: Text('Menu Item 3'),
                                  ),
                                ],
                                onSelected: (value) {},
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: IconButton(
                                    icon: Icon(Icons.more_vert),
                                    onPressed: () {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 70),
                                child: Icon(
                                  Icons.star_border_outlined,
                                  color: Colors.green,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(bottom: 0, right: 70),
                                child: Column(
                                  children: [
                                    Text(
                                      '4.2 (5K+) . 21 mins',
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        'Burgers,Biriyani,american,S.   \nMeenakshipuram 3.0 km',
                                        style: TextStyle(
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 80),
                                child: OutlinedButton.icon(
                                  onPressed: () {
                                    // Respond to button press
                                  },
                                  icon: Icon(
                                    Icons.directions_bike_sharp,
                                    size: 18,
                                    color: Color.fromARGB(255, 175, 3, 244),
                                  ),
                                  label: Text(
                                    "FREE DELIVERY",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 175, 3, 244)),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
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
