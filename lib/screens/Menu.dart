import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: SvgPicture.asset(
          "assets/images/second.svg",
          color: Colors.yellow[600],
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(children: [
              Container(
                margin: EdgeInsets.only(bottom: 10, left: 15),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.black.withOpacity(0.1),
                  width: 1,
                ))),
                width: MediaQuery.of(context).size.width * 0.90,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 15,
                        top: 15,
                        bottom: 10,
                      ),
                      child: CircleAvatar(
                        backgroundImage:
                            AssetImage("assets/images/kitchen.jpg"),
                        radius: 46,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          "Archanas kitchen",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Italian, Mexican and continental Dishes",
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            Text(
                              "\u{20B9}",
                              style: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                            ),
                            Text(
                              " 1200 for two's",
                              style: TextStyle(
                                fontSize: 13,
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Icon(
                              Icons.access_time,
                              size: 14,
                              color: Colors.black.withOpacity(0.5),
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text("2h"),
                            SizedBox(
                              width: 30,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.2),
                                shape: BoxShape.rectangle,
                                borderRadius: BorderRadius.circular(2.0),
                              ),
                              padding: EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 3,
                              ),
                              child: Row(
                                children: [
                                  Text(
                                    "4.0",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 14,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ]),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 20,
                  bottom: 10,
                  right: 10,
                ),
                child: Row(
                  children: [
                    Container(
                        height: 60,
                        width: 150,
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "All Food",
                              style: TextStyle(color: Colors.red, fontSize: 18),
                            ),
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.red),
                                  ),
                                )))),
                    Container(
                        height: 60,
                        width: 150,
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Lunch",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.black),
                                  ),
                                )))),
                    Container(
                        height: 60,
                        width: 150,
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Dinner",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.black),
                                  ),
                                )))),
                    Container(
                        height: 60,
                        width: 150,
                        padding: EdgeInsets.all(10),
                        child: ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Dessert",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                    side: BorderSide(color: Colors.black),
                                  ),
                                )))),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 20, right: 5),
                  child: RoundCheckBox(
                    onTap: (selected) {},
                    size: 25,
                  ),
                ),
                Text(
                  "Veg Only",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),

                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 180),
                      child: Icon(Icons.tune),
                    ),
                    Text("Filter Dishes")
                  ],
                ),
                SizedBox(height: 10,),
                
                
                
              ],
            ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child:Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 20,
                  bottom: 10,
                  right: 10,
                ),
                child: Column(
                  children: [
                    Foodcard(title: "Spicy Sesame Noodles", image: "assets/images/noodles.jpg", price: "450", rating: "4.5"),
                    Foodcard(title: "Quinoa and mixed greens salad and vinaigrette", image: "assets/images/salad.jpg", price: "270", rating: "4.0"),
                    Foodcard(title: "Somked chicken and sandwhich ", image: "assets/images/sandwhich.jpg", price: "340", rating: "4.6"),
                    Foodcard(title: "Winter special Apple pie ", image: "assets/images/applepie.jpg", price: "380", rating: "4.0")
                  ],
                ),
          )  
          
          )],
        ),
      ),
    );
  }
}


class Foodcard extends StatelessWidget {
  final String title;
  final String image;
  final String price;
  final String rating;

  const Foodcard({
    Key? key, required this.title, required this.image, required this.price, required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(3),
      height: 140,
      width: 380,
      decoration: BoxDecoration(color: Colors.white12),
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 20, right: 15),
            height: 120,
            width: 180,
            decoration: BoxDecoration(
                color: Colors.amber.withOpacity(0.6),
                image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill)),
          ),
          Positioned(
            top: 15,
            left: 190,
            bottom: 15,
            child: Container(
              margin: EdgeInsets.only(top: 15, right: 15),
              height: 120,
              width: 190,
              decoration: BoxDecoration(
                color: Colors.white10,
              ),
              child: Column(
                children: [
                  Text(
                    "$title 🟢",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 15),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    children: [
                      Text("₹$price",style: TextStyle(fontSize: 13),),
                      SizedBox(
                        width: 80,
                      ),
                      Icon(
                        Icons.favorite_border_outlined,
                        size: 16,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.shopping_bag_outlined,
                        size: 16,
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 120, left: 8),
            height: 20,
            width: 47,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(2.0),
            ),
            child: Row(
              children: [
                Text(
                  "$rating ⭐",
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      decoration: TextDecoration.none),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}