import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridview1(),
  ));
}

class Gridview1 extends StatelessWidget {
  var icons = [
    Icons.home,
    Icons.notification_add,
    Icons.camera,
    Icons.star,
    Icons.reduce_capacity,
    Icons.calendar_month,
    Icons.call,
    Icons.dashboard,
    Icons.cloud,
    Icons.voice_over_off,
    Icons.add_chart,
    Icons.email
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView.count(
      childAspectRatio: 3,
      mainAxisSpacing: 3,
      crossAxisCount: 2,
      children: List.generate(
          12,
          (index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  color: Colors
                      .primaries[Random().nextInt(Colors.primaries.length)],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [Icon(icons[index]),SizedBox(width: 2,) ,Text("Heart shaker")],
                  ),
                ),
              )),
    ));
  }
}
