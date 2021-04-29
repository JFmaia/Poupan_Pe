import 'package:flutter/material.dart';

import 'package:poupan/src/home/home_controller.dart';
import 'package:poupan/src/models/compra.dart';

class AddPage extends StatefulWidget {
  final Compra compra;

  const AddPage({Key? key, required this.compra}) : super(key: key);
  @override
  _AddPageState createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  HomeController controller = HomeController();
  TextEditingController textController = TextEditingController();
  TextEditingController valueController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 300,
                  top: 15,
                ),
                child: BackButton(
                  color: Colors.greenAccent,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        "assets/question.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      controller: textController,
                      decoration: InputDecoration(labelText: "Produto"),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 15,
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: TextButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.greenAccent),
                        ),
                        onPressed: () {
                          widget.compra.id.isEmpty
                              ? controller.addCompra(
                                  textController.value.text,
                                  valueController.value.text,
                                )
                              : controller.alterarCompra(
                                  widget.compra.id,
                                  textController.value.text,
                                  valueController.value.text,
                                );
                          Navigator.pop(context);
                        },
                        child: widget.compra.id.isEmpty
                            ? Text(
                                "Salvar",
                                style: TextStyle(color: Colors.white),
                              )
                            : Text(
                                "Alterar",
                                style: TextStyle(color: Colors.white),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
