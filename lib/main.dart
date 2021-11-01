import 'package:flutter/material.dart';
import 'package:homezy/screens/Login.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(scaffoldBackgroundColor: Colors.yellow[600]),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Login(
     
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
      margin: EdgeInsets.all(10),
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
            margin: EdgeInsets.only(top: 130, left: 8),
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
                      fontSize: 10,
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


