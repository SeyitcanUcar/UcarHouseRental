import 'package:flutter/material.dart';
import 'package:vize_proje/widgets/menuItem.dart';

import '../widgets/profileItem.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            ProfileItem(
              avatar: 'assets/images/p1.jpg',
              name: "Seyitcan Uçar",
              
            ),
            Divider(),
            MenuItem(
                title: "UcarHouse@gmail.com",
                icon: Icon(Icons.email),
                onTap: () {
                  
                }),
                Divider(),
                MenuItem(
                title: "+90 507 034 07 07",
                icon: Icon(Icons.phone),
                onTap: () {
                  
                }),
                Divider(),
                MenuItem(
                title: "House Rental",
                icon: Icon(Icons.home),
                onTap: () {
                  
                }),
                Divider(),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              onPressed: () {
                if (Navigator.canPop(context)) ;
                Navigator.pop(context);
              },
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
