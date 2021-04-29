import 'package:flutter/material.dart';

class ScoreCardWidget extends StatefulWidget {
  @override
  _ScoreCardWidgetState createState() => _ScoreCardWidgetState();
}

class _ScoreCardWidgetState extends State<ScoreCardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10),
      height: 150,
      width: 150,
      child: Image.asset(
        "assets/rich.png",
        fit: BoxFit.cover,
      ),
    );
  }
}
