// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

import '../widgets/menuItem.dart';
import '../widgets/profileItem.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("UcarHouseRental"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            ProfileItem(
              avatar: 'assets/images/p1.jpg',
              name: "Seyitcan Uçar",
              onTap: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
            Expanded(
              child: Column(
                children: [
                  Divider(),
                  MenuItem(
                    title: "Home Screen",
                    icon: Icon(
                      Icons.home,
                      size: 20,
                    ),
                    onTap: () {},
                  ),
                  MenuItem(
                    title: "About Us",
                    icon: Icon(
                      Icons.info_outline,
                      size: 20,
                    ),
                    onTap: () {},
                  ),
                  MenuItem(
                    title: "Favorites",
                    icon: Icon(
                      Icons.favorite,
                      size: 20,
                    ),
                    onTap: () {},
                  ),
                  MenuItem(
                    title: "Shop",
                    icon: Icon(
                      Icons.shop_2,
                      size: 20,
                    ),
                    onTap: () {},
                  ),
                  MenuItem(
                    title: "Contact Us",
                    icon: Icon(
                      Icons.message,
                      size: 20,
                    ),
                    onTap: () {},
                  ),
                  Divider(),
                  MenuItem(
                    title: "Settings",
                    icon: Icon(
                      Icons.settings,
                      size: 20,
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/settings");
                    },
                  ),
                  Divider(),
                  MenuItem(
                    icon: Icon(Icons.logout_outlined),
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/welcome', (route) => false);
                    },
                    title: "Logout",
                  ),
                ],
              ),
            ),
            Text(
              "Version 0.0.1",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
            ),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Header(),
          Expanded(
            child: Container(
              width: double.infinity,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(49, 158, 158, 158),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextField(
                        decoration:
                            InputDecoration(hintText: "Search For Dream House"),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            Image.asset("assets/images/p6.jpg"),
                          ],
                        ),
                      ),
                    ),
                    Divider(),
                    HousePostItem(
                      "assets/images/p8.jpg",
                      "Green Hell Bungalov",
                      "Sakarya, TR",
                      "£1500/month",
                    ),
                    Divider(),
                    HousePostItem(
                      "assets/images/p14.jpg",
                      "Freedom Lodgings",
                      "İstanbul, TR",
                      "£3500/month",
                    ),
                    Divider(),
                    HousePostItem(
                      "assets/images/p4.jpg",
                      "Kingsford Hotel",
                      "Antalya, TR",
                      "£2500/month",
                    ),
                    Divider(),
                    HousePostItem(
                      "assets/images/p13.jpg",
                      "Dream Summerhouse",
                      "Muğla, TR",
                      "£3000/month",
                    ),
                    Divider(),
                    HousePostItem(
                      "assets/images/p12.jpg",
                      "White House",
                      "Antalya, TR",
                      "£5000/month",
                    ),
                    Divider(),
                    HousePostItem(
                      "assets/images/p7.jpg",
                      "Muhafazakar Bungalov",
                      "İstanbul, TR",
                      "£1250/month",
                    ),
                    Divider(),
                    HousePostItem(
                      "assets/images/p11.jpg",
                      "Laurentia Hotel",
                      "İstanbul, TR",
                      "£15000/day",
                    ),
                    Divider(),
                    HousePostItem(
                      "assets/images/p10.jpg",
                      "Kiyasaki Dream House",
                      "Antalya, TR",
                      "£20000/week",
                    ),
                  ],
                ),
              ),
            ),
          ),
          BottomMenu(),
        ],
      ),
    );
  }

  Widget HousePostItem(
          String photo, String name, String location, String price) =>
      Container(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Image.asset(photo),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 15,
                              color: Colors.black38,
                            ),
                            Text(
                              location,
                              style: TextStyle(
                                color: Colors.black38,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Text(
                      price,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );

  Widget Header() => Container(
        padding: EdgeInsets.all(8),
        width: double.infinity,
        height: 80,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Current Location",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                    ),
                  ),
                  Text(
                    "İstanbul, TR",
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.tune),
            ),
          ],
        ),
      );

  Widget BottomMenu() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black,
              border: Border.all(),
              borderRadius: BorderRadius.circular(50)),
          width: 320,
          margin: EdgeInsets.all(12),
          height: 68,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomMenuItem(Icons.home),
              BottomMenuItem(Icons.dataset),
              BottomMenuItem(Icons.favorite),
              BottomMenuItem(Icons.person),
            ],
          ),
        ),
      );

  Widget BottomMenuItem(
    IconData icon,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            size: 28,
            color: Color.fromARGB(179, 235, 233, 233),
          ),
        ],
      ),
    );
  }
}
