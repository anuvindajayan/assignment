import 'package:assignment/signup.dart';
import 'package:flutter/material.dart';

import 'loginpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(),
  ));
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Text(
              "Hello There!",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(height: 15),
            Text(
              "Automatic idendity verification which enable you to verify your identity",
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
            Image.asset("assets/images/Loginimage.jpg"),
            MaterialButton(
              shape: StadiumBorder(),
              minWidth: 220,
              height: 50,
              color: Colors.blue,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Loginpage()));
              },
              child: Text("Login"),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              shape: StadiumBorder(),
              minWidth: 220,
              height: 50,
              color: Colors.red,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Signuppage()));
              },
              child: Text("Sign up"),
            )
          ],
        ),
      ),
    );
  }
}



