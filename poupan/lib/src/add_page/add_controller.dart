import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AddController {
  Uri url =
      Uri.https("poupan-ee992-default-rtdb.firebaseio.com", "/compras.json");

  void addCompra(BuildContext context, String text, String value) {
    http
        .post(
          url,
          body: jsonEncode(
            {
              "compra": text,
              "valor": value,
            },
          ),
        )
        .then(
          (value) {},
        );
    /*final snackBar = SnackBar(
      content: Text("Seus dados foram salvos !!"),
      action: SnackBarAction(
        label: "Dipensar",
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    );*/
  }
}
