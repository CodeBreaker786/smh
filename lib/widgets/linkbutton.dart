import 'package:flutter/material.dart';
import 'package:sarasotaapp/uatheme.dart';

class LinkButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;

  LinkButton({this.text, this.color, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(50),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: color,
          fontFamily: 'Lexend',
          fontSize: UATheme.normalSize(),
        ),
      ),
      onPressed: onPressed,
    );
  }
}
