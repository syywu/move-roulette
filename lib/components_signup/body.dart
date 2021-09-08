import 'package:flutter/material.dart';
import 'package:flutter_application_1/components_login/already_have_an_account.dart';
import 'package:flutter_application_1/components_login/rouded_input_field.dart';
import 'package:flutter_application_1/components_login/rounded_password_field.dart';
import 'package:flutter_application_1/components_signup/background.dart';
import 'package:flutter_application_1/components_signup/or_divider.dart';
import 'package:flutter_application_1/components_signup/social_icon.dart';
import 'package:flutter_application_1/components_welcome/rounded_button.dart';
import 'package:flutter_application_1/screens/login.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/moveroulette.png',
            height: size.height * 0.2,
          ),
          SizedBox(height: size.height * 0.02),
          Text(
            "SIGN UP",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.05),
          RoundedInputField(
            hintText: 'Your e-mail',
            onChanged: (value) {},
          ),
          SizedBox(height: size.height * 0.02),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          RoundedButton(
            text: 'SIGN UP',
            press: () {},
          ),
          SizedBox(height: size.height * 0.02),
          AlreadyHaveAnAccount(
            login: false,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Login();
                  },
                ),
              );
            },
          ),
          OrDivider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialIcon(
                iconScr: 'assets/icons/facebook.png',
                press: () {},
              ),
              SocialIcon(
                iconScr: 'assets/icons/twitter.png',
                press: () {},
              ),
              SocialIcon(
                iconScr: 'assets/icons/google-logo.png',
                press: () {},
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
