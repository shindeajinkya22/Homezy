import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homezy/screens/Sign.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      padding: EdgeInsets.symmetric(
        horizontal: 0,
      ),
      children: [
        Container(
          margin: EdgeInsets.only(top: 15),
          child: Image.asset(
            'assets/images/first.png',
            fit: BoxFit.fitWidth,
            height: 300,
          ),
        ),
        SvgPicture.asset(
          "assets/images/HomezyL.svg",
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
              onPressed: () {},
              icon: Icon(
                Icons.mail_outline,
                color: Colors.black,
              ),
              label: Text("Sign in with Email",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black87,
                  )),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
            )),
        SizedBox(
          height: 15,
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
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/images/apple.svg",
                height: 25,
              ),
              label: Text("Sign in with Apple",
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black87,
                  )),
              style: ElevatedButton.styleFrom(primary: Colors.white),
            )),
        SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
                height: 45,
                margin: EdgeInsets.only(left: 30),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(400),
                ),
                width: 150,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/facebook.svg",
                    height: 20,
                  ),
                  label: Text(
                    "Facebook",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                )),
            Container(
                height: 45,
                margin: EdgeInsets.only(right: 20),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(400),
                ),
                width: 150,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/images/google.svg",
                    height: 20,
                  ),
                  label: Text(
                    "Gmail",
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                  ),
                )),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "New to Homezy ? ",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
            ),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return Signup();
                    }),
                  );
                },
                child: Text(
                  " Sign Up",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      decoration: TextDecoration.underline),
                )),
          ],
        )
      ],
    ));
  }
}
