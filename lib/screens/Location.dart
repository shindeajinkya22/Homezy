import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homezy/screens/Menu.dart';

class Location extends StatefulWidget {
  const Location({Key? key}) : super(key: key);

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 0),
        children: [
          Container(
            margin: EdgeInsets.only(top: 50),
            child: SvgPicture.asset("assets/images/second.svg"),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
              child: Image.asset(
            "assets/images/track.png",
            height: 260,
            // width: 200,
            fit: BoxFit.fitHeight,
          )),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              child: Text(
                "Where would you like\n us to deliver ?",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 30),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            "- Your Friendly Neighbourhood Chef",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 50,
          ),
          Container(
              margin: EdgeInsets.only(right: 30, left: 30),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              width: double.infinity,
              height: 45,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              ),
              child: ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Menu();
                    }),
                  );
                },
                icon: Icon(
                  Icons.place_outlined,
                  color: Colors.black87,
                ),
                label: Text("Add a New Location",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.black38,
                    )),
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                ),
              )),
        ],
      ),
    );
  }
}
