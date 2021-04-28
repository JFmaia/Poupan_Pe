import 'package:flutter/material.dart';
import 'package:poupan/src/home/widgets/app_bar_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textController = TextEditingController();
  TextEditingController valueController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("Camisa"),
              subtitle: Text("500 R\$"),
            );
          },
          itemCount: 20,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purpleAccent,
        onPressed: () {},
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
