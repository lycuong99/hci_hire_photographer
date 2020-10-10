import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hci_freelancer_photographer/Components/button.dart';
import 'package:hci_freelancer_photographer/screens/login.dart';
import 'package:hci_freelancer_photographer/screens/sign_in.dart';
import 'package:hci_freelancer_photographer/utilities/constants.dart';

class LoginStartScreen extends StatefulWidget {
  @override
  _LoginStartScreenState createState() => _LoginStartScreenState();
}

class _LoginStartScreenState extends State<LoginStartScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage("images/login_bgrd_2.jpg"),
        fit: BoxFit.cover,
        colorFilter:
            ColorFilter.mode(Colors.yellow.withOpacity(0.9), BlendMode.dstATop),
      )),
      constraints: BoxConstraints.expand(),
      child: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 38.0, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Text('iscproject',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
              padding: EdgeInsets.only(top: 10),
              margin: EdgeInsets.only(bottom: 220),
            ),
            Container(
              child: Text(
                "",
                style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w600),
              ),
              height: 60,
              padding: EdgeInsets.only(right: 60),
              margin: EdgeInsets.only(bottom: 170),
            ),
            RoundButtonFullWidth(
              fontColor: Colors.black,
              color: Colors.white,
              text: 'Log In',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return LoginScreen();
                }));
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            RoundButtonPureFullWidth(
              text: 'Sign up',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return SignInScreen();
                }));
              },
            )
          ],
        ),
      )),
    ));
  }
}
