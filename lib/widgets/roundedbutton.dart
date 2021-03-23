import 'package:flutter/material.dart';
import 'package:sarasotaapp/uatheme.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final Color color;
  final Function onPressed;

  RoundedButton({this.text, this.color, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10, left: 10, top: 15, bottom: 15),
      child: RaisedButton(
        color: color == Colors.grey.shade600 ? Colors.grey.shade400 : color,
        shape: RoundedRectangleBorder(
          borderRadius: new BorderRadius.circular(1),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: color == Colors.grey.shade600 ? Colors.black : Colors.white,
            fontFamily: 'Lexend',
            fontSize: UATheme.normalSize(),
          ),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
