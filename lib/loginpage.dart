import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              "Welcome back ! Login with your credential",
              style: TextStyle(fontSize: 15),
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: "username",
                    labelText: "username"),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 28, right: 28, bottom: 28),
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "password",
                      labelText: "password")),
            ),
            SizedBox(height: 20,),
            MaterialButton(
              height: 50,
              minWidth: 220,
              color: Colors.blue,
              shape: StadiumBorder(),
              onPressed: () {},
              child: Text("Login"),
            ),
            SizedBox(height: 30,),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                text: "Don't have an account?",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
              TextSpan(
                  text: "Sign up",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
            ]))
          ],
        ),
      ),
    );
  }
}
