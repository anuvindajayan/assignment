import 'package:flutter/gestures.dart';
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
    Icons.person_add,
    Icons.logout
  ];
  var text = [
    "Privacy",
    "Purchase history",
    "Help & Support",
    "Settings",
    "Invite a friend",
    "Logout"
  ];

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
        body: Column(children: [
          Container(
            child: Column(
              children: [
                Center(
                    child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSiQHSHrNaU0FTBBo41_RwmVWCPN9eqtM3NiA&usqp=CAU"),
                    radius: 60,
                  ),
                )),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 160, top: 20, bottom: 20),
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
                  "John cena",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black),
                ),
                Text(
                  "@johncena",
                  style: TextStyle(color: Colors.black),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            child: Container(
              height: 350,
              width: 300,
              child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(
                          left: 15, right: 15, top: 15, bottom: 15),
                      child: ListTile(
                        onTap: () {},
                        shape: StadiumBorder(),
                        leading: Icon(icon[index]),
                        title:
                            Text(text[index], style: TextStyle(fontSize: 20)),
                        tileColor: Colors.black12,
                      ),
                    );
                  }),
            ),
          ),
        ]));
  }
}
