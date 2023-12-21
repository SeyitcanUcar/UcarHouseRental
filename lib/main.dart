import 'package:flutter/material.dart';
import 'package:vize_proje/screens/homeScreen.dart';
import 'package:vize_proje/screens/loginScreen.dart';
import 'package:vize_proje/screens/profileScreen.dart';
import 'package:vize_proje/screens/registerScreen.dart';
import 'package:vize_proje/screens/settingsScreen.dart';
import 'package:vize_proje/screens/welcomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UcarHouseRental',
      debugShowCheckedModeBanner: false,
      routes: {
        '/Home': (context) => HomeScreen(),
        '/Login': (context) => LoginScreen(),
        '/profile': (context) => ProfileScreen(),
        '/register': (context) => RegisterScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/settings':(context) => SettingsScreen(),

      },
      initialRoute: '/welcome',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

