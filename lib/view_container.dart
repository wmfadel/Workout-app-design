import 'package:flutter/material.dart';

class ViewContainer extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color color;
  final Color textColor;

  ViewContainer({
    @required this.text,
    @required this.icon,
    @required this.color,
    @required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: double.maxFinite,
      height: double.maxFinite,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(icon,color: textColor),
          Text(text,style: TextStyle(color: textColor),)
        ],
      ),
    );
  }
}
