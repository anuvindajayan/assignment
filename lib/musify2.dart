import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Musify2(),
  ));
}

class Musify2 extends StatelessWidget {
  var images = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSij4xw9-Z1PFYNGcfs1eZtSx55zLOtlYkZkA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpDe7khiVDVJqsJ3t3DbcJiA4uA_I03dvq5zmC4uWqpmg21xlh1Lt_i9uauBO9BrjBuic&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPUjNfdMf5TILskAuGcIYsFB7KymtX_ShtRw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQCiaKZHoYpxWpfzWkDZl5F2PW_4TDjs2D6xA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3DujgJHTLcE4A-0O3xfdVVece9RMlf253-jvcSoIuZ9NfMOnwDpZ8CiB2dBjRAtajOyE&usqp=CAU",
  ];
  var name = [
    "Hero",
    "unholy",
    "lift me up",
    "Depression",
    "Iam good",
  ];
  var subname = [
    "Taylor Swift",
    "Sam Smith,Kim Petres",
    "Rihanna",
    "Dax",
    "David Guetta & Bebe Rexha"
  ];
  var icon = [
    Icons.star_border_purple500_outlined,
    Icons.star_border_purple500_outlined,
    Icons.star_border_purple500_outlined,
    Icons.star_border_purple500_outlined,
    Icons.star_border_purple500_outlined
  ];
  var subicon = [
    Icons.download,
    Icons.download,
    Icons.download,
    Icons.download,
    Icons.download
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Musify.",
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.pinkAccent),
        ),
        backgroundColor: Colors.black,
      ),
      body: ListView(children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 300, top: 20),
              child: Text(
                "Suggested playlists",
                style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSij4xw9-Z1PFYNGcfs1eZtSx55zLOtlYkZkA&usqp=CAU"),
                  ),
                  Card(
                    child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPUjNfdMf5TILskAuGcIYsFB7KymtX_ShtRw&usqp=CAU"),
                  ),
                  Card(
                    child: Image.network(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRpDe7khiVDVJqsJ3t3DbcJiA4uA_I03dvq5zmC4uWqpmg21xlh1Lt_i9uauBO9BrjBuic&usqp=CAU"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 270, top: 20, bottom: 20),
              child: Text(
                "Recommanded playlists",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.pinkAccent),
              ),
            ),
          ],
        ),
        Container(
          color: Colors.black,
          height: 350,
          width: 300,
          child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                      left: 15, right: 15, top: 15, bottom: 15),
                  child: ListTile(
                    onTap: () {},
                    leading: Image.network(images[index]),
                    title: Text(name[index],
                        style:
                            TextStyle(fontSize: 20, color: Colors.pinkAccent)),
                    tileColor: Colors.black12,
                    subtitle: Text(
                      subname[index],
                      style: TextStyle(color: Colors.white),
                    ),
                    trailing: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          icon[index],
                          color: Colors.pinkAccent,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          subicon[index],
                          color: Colors.pinkAccent,
                        )
                      ],
                    ),
                  ),
                );
              }),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
          items: [BottomNavigationBarItem(backgroundColor: Colors.black87,icon: Icon(Icons.home,color: Colors.pinkAccent,),label: "",),
            BottomNavigationBarItem(icon: Icon(Icons.search_rounded,color: Colors.pinkAccent,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.playlist_add,color: Colors.pinkAccent,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz,color: Colors.pinkAccent,),label: "")]),
    );
  }
}
