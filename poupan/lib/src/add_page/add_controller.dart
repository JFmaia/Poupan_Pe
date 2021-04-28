import 'dart:convert';

import 'package:http/http.dart' as http;

class AddController {
  Uri url =
      Uri.https("poupan-ee992-default-rtdb.firebaseio.com", "/compras.json");

  void addCompra(String text, String value) {
    http.post(url,
        body: jsonEncode({
          "compra": text,
          "valor": value,
        }));
  }
}
