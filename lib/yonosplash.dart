import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Splash(),
  ));
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [Colors.red,Colors.pink, Colors.purple])),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 30),
                Text(
                  "you",
                  style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text("only",
                    style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),SizedBox(height: 0,),
                Text("need",
                    style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Text("one",
                    style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                SizedBox(height: 20,),
                Image.asset(
                  "assets/images/unnamed.png",
                  height: 150,
                  width: 150,
                ),
                SizedBox(height: 20),
                Text("Banking  * investing * Shopping",style: TextStyle(fontSize: 30,color: Colors.white),)

              ],
            ),
          ),
        ));
  }
}
