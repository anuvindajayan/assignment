import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelUi(),
  ));
}

class HotelUi extends StatelessWidget {
  const HotelUi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          items: [BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.purple,),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.favorite),label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "")]),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                child: Image.network(
                  "https://media-cdn.tripadvisor.com/media/photo-s/28/b0/69/fb/caption.jpg",
                  fit: BoxFit.fill,
                ),
                height: 300,
                width: 520,
              ),
              Positioned(
                  top: 195,
                  left: 20,
                  child: Text(
                    "Crowne Plaza",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  top: 220,
                  left: 20,
                  child: Text(
                    "Kochi,kerala",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )),
              Positioned(
                top: 260,
                left: 20,
                child: MaterialButton(
                  height: 30,
                  minWidth: 80,
                  shape: StadiumBorder(),
                  onPressed: () {},
                  child: Text(
                    "8.4/85 reviews",
                    style: TextStyle(color: Colors.black),
                  ),
                  color: Colors.grey,
                ),
              ),
              Positioned(
                  top: 260,
                  left: 450,
                  child: Icon(
                    Icons.favorite_border,
                    color: Colors.white,
                  )),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 280,
                  top: 25,
                  left: 25,
                ),
                child: RatingBar.builder(
                    itemCount: 5,
                    initialRating: 3,
                    itemSize: 20,
                    itemBuilder: (context, index) => Icon(
                          Icons.star_rate,
                          color: Colors.purple,
                          size: 10,
                        ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    }),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, right: 20),
                    child: Text(
                      "\$200",
                      style: TextStyle(color: Colors.purple, fontSize: 20),
                    ),
                  ),
                  Text(
                    "/per night",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Row(children: [
              Icon(
                Icons.location_on,
                size: 10,
              ),
              Text(
                "8km to Lulu mall",
                style: TextStyle(fontSize: 10),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: MaterialButton(
              color: Colors.purple,
              height: 30,
              minWidth: 400,
              shape: StadiumBorder(),
              onPressed: () {},
              child: Text(
                "Book Now",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 250.0, top: 20, bottom: 15),
            child: Text(
              "Ramada Plaza Palm Grove",
              style: TextStyle(fontSize: 20),
            ),
          ),
          Text(
              "Nestled by Vembanad Lake, Crowne Plaza Kochi is a luxurious property catering to corporate and social gatherings. With modern design, exceptional hospitality, and a strategic location, it offers convenience for business and leisure travelers Crowne Plaza Kochi is ideally located on the new business district of the city NH 47 Bypass and provides easy access to Info Park Kakkanad, Cochin Special Economic Zone, M.G. Road, Cochin Port, Shipyard, Naval Base, major sightseeing areas like Fort Kochi, Mattancherry and is 45 ")
        ],
      ),
    );
  }
}
