import 'package:flutter/material.dart';

class SplashLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 2 - 140),
      child: Column(
        children: <Widget>[
          Image(
              width: 250.0,
              height: 140.0,
              fit: BoxFit.contain,
              image: AssetImage('assets/img/zartoo_white_logo.png')),
        ],
      ),
    );
  }
}
