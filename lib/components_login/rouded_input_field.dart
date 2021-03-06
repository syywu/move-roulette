import 'package:flutter/material.dart';
import 'package:flutter_application_1/components_login/text_field_container.dart';

class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
        child: TextField(
      cursorColor: Colors.white,
      onChanged: onChanged,
      decoration: InputDecoration(
        icon: Icon(
          icon,
          color: Colors.black,
        ),
        border: InputBorder.none,
        hintText: hintText,
      ),
    ));
  }
}
