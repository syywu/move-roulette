import 'package:flutter/material.dart';
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
          Text('LOGIN', style: TextStyle(fontWeight: FontWeight.bold)),
          Image.asset(
            'moveroulette.png',
            height: size.height * 0.3,
          )
        ],
      ),
    );
  }
}
