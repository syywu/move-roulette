import 'package:flutter/material.dart';

class SocialIcon extends StatelessWidget {
  final String iconScr;
  final VoidCallback press;
  const SocialIcon({
    Key? key,
    required this.iconScr,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: kPrimaryLightColor),
          shape: BoxShape.circle,
        ),
        child: Image.asset(
          iconScr,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
