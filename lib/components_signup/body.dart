import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  final Widget child;
  const Body({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      //used double.infinity instead of size.width as both are the same
      child: Stack(
        alignment: Alignment.center,
      ),
    );
  }
}
