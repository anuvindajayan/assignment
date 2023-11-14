import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Product(),
  ));
}

class Product extends StatelessWidget {
  var name = ["Apple", "Mango", "Banana", "Grape", "Watermelon", "Kiwi"];
  var unit = [
    "kg",
    "Doz",
    "Doz",
    "kg",
    "kg",
    "pc",
  ];
  var price = [
    "\$20",
    "\$30",
    "\$20",
    "\$25",
    "\$100",
    "\$60",
  ];
  var images = [
    "https://cdn0.iconfinder.com/data/icons/fruits/512/Apple.png",
    "https://cdn0.iconfinder.com/data/icons/fruits/512/Mango.png",
    "https://cdn0.iconfinder.com/data/icons/fruits/512/Banana.png",
    "https://cdn1.iconfinder.com/data/icons/fruit-136/64/Fruit_iconfree_Filled_Outline_grape-healthy-organic-food-fruit_icon-512.png",
    "https://cdn1.iconfinder.com/data/icons/fruit-136/64/Fruit_iconfree_Filled_Outline_watermelon-healthy-organic-food-fruit_icon-1024.png",
    "https://cdn0.iconfinder.com/data/icons/new_zealand/128/Kiwi_Fruit.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Product list"),
          actions: [Icon(Icons.trolley)],
        ),
        body: ListView.custom(
            childrenDelegate:
                SliverChildBuilderDelegate((context, index) => Card(
                      color: Colors.blueGrey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.network(
                            images[index],
                            height: 100,
                            width: 100,
                          ),
                          Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(text: "Name     :"),
                                TextSpan(text: name[index],style: TextStyle(fontWeight: FontWeight.bold))
                              ])),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(text: "Unit   :"),
                                TextSpan(text: unit[index],style: TextStyle(fontWeight: FontWeight.bold))
                              ])),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: "Price     :",
                                ),
                                TextSpan(text: price[index],style: TextStyle(fontWeight: FontWeight.bold))
                              ]))
                            ],
                          ),
                          SizedBox(width: 400,),

                          MaterialButton(
                            color: Colors.black,
                            height: 30,
                            minWidth: 70,
                            onPressed: () {},
                            child: Text(
                              "Add to cart",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ],
                      ),
                    ))));
  }
}
