import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DkButtonIcon extends StatelessWidget {
  String text;
  Color color;
  Icon icon;
  Function onPressed;

  DkButtonIcon(this.text, this.icon,
      {this.color = Colors.blueGrey, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          icon,
          Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      onPressed: onPressed,
    );
  }
}
