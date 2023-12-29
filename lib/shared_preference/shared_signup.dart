import 'package:assignment/shared_preference/shared_login.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SharedSign(),
  ));
}

class SharedSign extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SharedSignState();
}

class SharedSignState extends State {
  final formkey = GlobalKey<FormState>();
  final name_ctrl = TextEditingController();
  final email_ctrl = TextEditingController();
  final pass_ctrl = TextEditingController();
  final confirmpass_ctrl = TextEditingController();
  String? pwd;
  late bool loggedin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Registration page"),
      ),
      body: Center(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: name_ctrl,
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
                  controller: email_ctrl,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_outlined),
                      hintText: "Email id",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  controller: pass_ctrl,
                  validator: (password) {
                    pwd = password;
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      hintText: "Password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextFormField(
                  validator: (confirmpassword) {
                    if (confirmpassword!.isEmpty || confirmpassword != pwd) {
                      return "Password is empty/ mismatch";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password_outlined),
                      hintText: "Confirmpassword",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  onPressed: () {
                    Store_data();
                  },
                  child: Text(
                    "Register",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

  void Store_data() async {
    final SharedPreferences preferences =
        await SharedPreferences.getInstance()!;
    String username = name_ctrl.text;
    String email = email_ctrl.text;
    String password = pass_ctrl.text;
    String confirmpassword = confirmpass_ctrl.text;
    final valid = formkey.currentState?.validate();
    if (valid == true) {
      preferences.setString("uname", username);
      preferences.setString("emailid", email);
      preferences.setString("pass", password);
      preferences.setString("cpass", confirmpassword);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SharedLogin()));
    }
  }
}
