import 'package:assignment/tourisum/dummy_place_list.dart';
import 'package:assignment/tourisum/place_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Tourism(),
    routes: {"details": (context) => Details()},
  ));
}

class Tourism extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: AppBar(elevation: 0,toolbarHeight: 30,
          title: Text(
            "Popular",
            style: TextStyle(color: Colors.black87),
          ),
          backgroundColor: Colors.white,
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView(
          children: Places.map((e) => GestureDetector(
              onTap: () => gotodetails(context, e["id"]),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 5.0,top: 5),
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            e["image"],
                          ))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 150.0),
                    child: Text(
                      e["id"],
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                ),
              ))).toList()),
    );
  }

  void gotodetails(BuildContext context, id) {
    Navigator.pushNamed(context, "details", arguments: id);
  }
}
