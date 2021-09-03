import 'package:flutter/material.dart';
import 'package:flutter_application_1/components_login/already_have_an_account.dart';
import 'package:flutter_application_1/components_login/rouded_input_field.dart';
import 'package:flutter_application_1/components_login/rounded_password_field.dart';
import 'package:flutter_application_1/components_welcome/rounded_button.dart';
import 'background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/moveroulette.png',
            height: size.height * 0.2,
          ),
          SizedBox(height: size.height * 0.02),
          Text('LOGIN', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: size.height * 0.05),
          RoundedInputField(
            hintText: 'Your E-mail',
            onChanged: (String value) {},
          ),
          SizedBox(height: size.height * 0.02),
          RoundedPasswordField(
            onChanged: (value) {},
          ),
          SizedBox(height: size.height * 0.02),
          RoundedButton(
            text: 'LOGIN',
            press: () {},
          ),
          SizedBox(height: size.height * 0.02),
          AlreadyHaveAnAccount(
            press: () {},
          ),
        ],
      ),
    );
  }
}
