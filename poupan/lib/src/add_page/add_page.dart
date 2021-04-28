import 'package:flutter/material.dart';
import 'package:poupan/src/add_page/add_controller.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  AddController controller = AddController();
  TextEditingController textController = TextEditingController();
  TextEditingController valueController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                right: 300,
                top: 30,
              ),
              child: BackButton(),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                    controller: textController,
                    decoration: InputDecoration(labelText: "Produto"),
                    textAlign: TextAlign.center,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: valueController,
                    decoration: InputDecoration(
                      labelText: "Valor",
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        controller.addCompra(context, textController.value.text,
                            valueController.value.text);
                      },
                      child: Text("Salvar"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
