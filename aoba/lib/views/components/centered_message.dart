import 'package:flutter/material.dart';

class CenteredMessage extends StatelessWidget {
  final String message;
  final String subMessage;
  final IconData icon;
  final double iconSize;
  final double fontSize;
  final double fontSizeSub;

  CenteredMessage(
    this.message,
    this.subMessage, {
    this.icon,
    this.iconSize = 64,
    this.fontSize = 20,
    this.fontSizeSub = 17,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Text(
              message,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: fontSize),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                subMessage,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: fontSizeSub),
              ),
            ),
          ),
          Visibility(
            child: Icon(
              icon,
              size: iconSize,
              color: Colors.purple[700],
            ),
            visible: icon != null,
          ),
        ],
      ),
    );
  }
}
