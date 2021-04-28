import 'package:flutter/material.dart';

import '../home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      title: "Poupan",
      home: HomePage(),
    );
  }
}
