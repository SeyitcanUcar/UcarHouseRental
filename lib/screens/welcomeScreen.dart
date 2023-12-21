import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.asset("assets/images/p3.jpg"),
              Text(
                "Welcome To  UcarHouseRental",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "you are in the right place",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 17,
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, '/Login'),
                    child: Row(
                      children: [
                        Icon(Icons.login_rounded),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Login"),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/register');
                    },
                    child: Row(
                      children: [
                        Icon(Icons.app_registration),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Register"),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
