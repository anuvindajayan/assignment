import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile(),
  ));
}

class Profile extends StatelessWidget {
  var icon = [
    Icons.privacy_tip_outlined,
  Icons.history,
  Icons.question_mark_outlined,
    Icons.settings,
    Icons.person,
    Icons.logout
  ];
  var text=["Privacy","Purchase history","Help & Support","Settings","Invite a friend","Logout"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.menu,
            color: Colors.black,
          )
        ],
      ),
      body: Container(
        child: Column(children: [
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/unnamed.png"),
              radius: 60,
            ),
          )),
          Padding(
            padding: const EdgeInsets.only(left: 160, top: 20, bottom: 20),
            child: Row(
              children: [
                Icon(
                  FontAwesomeIcons.facebook,
                  color: Colors.blue,
                  size: 40,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  FontAwesomeIcons.twitter,
                  color: Colors.blueAccent,
                  size: 40,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  FontAwesomeIcons.linkedin,
                  color: Colors.teal,
                  size: 40,
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  FontAwesomeIcons.github,
                  size: 40,
                )
              ],
            ),
          ),
          Text(
            "Jerin",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 30, color: Colors.black),
          ),
          Text(
            "@webrror",
            style: TextStyle(color: Colors.black),
          ),SizedBox(height: 100,),
          Column(
              children: List.generate(
                  6,
                  (index) => Padding(
                    padding: const EdgeInsets.only(left: 150.0),
                    child: SingleChildScrollView(child: ListTile(leading: Icon(icon[index]),title: Text(text[index]),)),
                  ))
        )
    ]
    ),)
    );
  }
}
