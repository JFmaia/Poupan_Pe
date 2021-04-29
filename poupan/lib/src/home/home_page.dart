import 'package:flutter/material.dart';
import 'package:poupan/src/add_page/add_page.dart';
import 'package:poupan/src/home/home_controller.dart';
import 'package:poupan/src/home/widgets/app_bar_widget.dart';
import 'package:rx_notifier/rx_notifier.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController controller = HomeController();
  @override
  void initState() {
    super.initState();
    controller.getCompras();
  }

  Future refresh() async {
    setState(() {
      controller.getCompras();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 10),
        child: RefreshIndicator(
          onRefresh: () => refresh(),
          child: RxBuilder(
            builder: (_) {
              return ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(controller.listEvents[index].compra),
                    subtitle: Text("${controller.listEvents[index].valor} R\$"),
                  );
                },
                itemCount: controller.listEvents.length,
              );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purpleAccent,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddPage(),
            ),
          );
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
