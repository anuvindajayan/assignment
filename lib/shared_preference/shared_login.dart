import 'package:assignment/shared_preference/home.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLogin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SharedLoginState();
}

class SharedLoginState extends State {
  final username_ctrl = TextEditingController();
  final password_ctrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Login page",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 30),
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: username_ctrl,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Username",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextFormField(
                controller: password_ctrl,
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password_outlined),
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.green)),
                onPressed: () {
                  get_data();
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 30),
                ))
          ],
        ),
      ),
    );
  }

  void get_data() async {
    final SharedPreferences preferences =
        await SharedPreferences.getInstance()!;
    String user = username_ctrl.text;
    String pass = password_ctrl.text;
    String? entername = preferences.getString("uname");
    String? enterpass = preferences.getString("pass");
    if (user == entername && pass == enterpass) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SharedHome()));
    }
  }
}
