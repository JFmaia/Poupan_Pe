import 'package:flutter/material.dart';
import 'package:poupan/src/splash/splash.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: "Poupan",
      home: Splash(),
    );
  }
}
