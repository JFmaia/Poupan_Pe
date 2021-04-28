import 'package:flutter/material.dart';
import 'package:poupan/src/add_page/add_page.dart';
import 'package:poupan/src/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Poupan",
      home: AddPage(),
    );
  }
}
