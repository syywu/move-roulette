import 'package:flutter/material.dart';
import 'package:flutter_application_1/components_login/rouded_input_field.dart';
import 'package:flutter_application_1/components_login/text_field_container.dart';
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
          TextFieldContainer(
            child: RoundedPasswordField(),
          ),
        ],
      ),
    );
  }
}

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  const RoundedPasswordField({
    Key? key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: true,
      onChanged: onChanged,
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: 'Password',
        icon: Icon(
          Icons.lock,
          color: Colors.white,
        ),
        suffixIcon: Icon(
          Icons.visibility,
          color: Colors.black,
        ),
        border: InputBorder.none,
      ),
    );
  }
}
