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
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "PoupanPE !!",
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              "50000",
              style: TextStyle(
                fontSize: 20,
                color: Colors.purpleAccent,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
