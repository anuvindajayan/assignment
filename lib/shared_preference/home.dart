import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedHome extends StatefulWidget {
  @override
  State<SharedHome> createState() => _SharedHomeState();
}

class _SharedHomeState extends State<SharedHome> {
  String? Username;

  @override
  void initState() {
    fetch_data();
    super.initState();
  }

  void fetch_data() async {
    final SharedPreferences preferences = await SharedPreferences.getInstance();
    setState(() {
      Username = preferences.getString("uname");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text(
        "Hello $Username",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      backgroundColor: Colors.pink,
    ));
  }
}
