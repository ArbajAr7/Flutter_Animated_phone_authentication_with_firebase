import 'package:Circle/homepage.dart';
import 'package:flutter/material.dart';
import 'package:Circle/welcome/Screens/Login/components/background.dart';
import 'package:Circle/welcome/components/rounded_button.dart';
import 'package:flutter_svg/svg.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:Circle/welcome/Screens/Login/components/otp.dart';
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}
class _BodyState extends State<Body> {
  TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "VERIFY YOUR PHONE NUMBER",
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,color: Color(0xFF6F35A5)),
            ),
            SizedBox(height: size.height * 0.07),
            SvgPicture.asset(
              "assets/icons/login.svg",
              height: size.height * 0.40,
            ),
            SizedBox(height: size.height * 0.03),
            Container(
              margin: EdgeInsets.only(top: 40, right: 10, left: 10),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Phone Number',
                  prefix: Padding(
                    padding: EdgeInsets.all(4),
                    child: Text('+977'),
                  ),
                ),
                maxLength: 10,
                keyboardType: TextInputType.number,
                controller: _controller,
              ),
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              "Enter phone number followed by country code",
              style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12.0),
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              "Example: +91 965XXXX697 for India",
              style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12.0),
            ),
            Text(
              "+977 965XXXX697 for Nepal",
              style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12.0),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "NEXT",
              press: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => OTPScreen(_controller.text)));
              },
            ),
            SizedBox(height: size.height * 0.03),
          ],
        ),
      ),
    );
  }
}
