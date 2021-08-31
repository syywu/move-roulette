import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components_welcome/background.dart';
import 'package:flutter_application_1/components_welcome/rounded_button.dart';
import 'package:flutter_application_1/constants.dart';
import 'package:flutter_application_1/screens/login.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //this size provides total height and width of our screen
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/moveroulette.png',
              height: size.height * 0.2,
            ),
            SizedBox(height: size.height * 0.01),
            Text(
              'WELCOME TO MOVE ROULETTE',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedButton(
              text: 'LOGIN',
              press: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Login();
                }));
              },
            ),
            RoundedButton(
              text: 'SIGN IN',
              color: kPrimaryColor,
              textColor: Colors.black,
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}
