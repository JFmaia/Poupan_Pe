// ignore: unused_import
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:poupan/src/models/compra.dart';
import 'package:rx_notifier/rx_notifier.dart';

class HomeController {
  Uri url =
      Uri.https("poupan-ee992-default-rtdb.firebaseio.com", "/compras.json");

  var listEvents = RxList<Compra>([]);

  Future addCompra(String text, String value) async {
    final response = await http.post(
      url,
      body: jsonEncode({
        "compra": text,
        "valor": value,
      }),
    );

    listEvents.insert(
      0,
      Compra(
        id: json.decode(response.body)['name'],
        compra: text,
        valor: value,
      ),
    );
    return Future.value();
  }

  Future<void> getCompras() async {
    listEvents = RxList<Compra>([]);
    final response = await http.get(url);
    Map<String, dynamic> data = jsonDecode(response.body);

    data.forEach(
      (compraId, compraData) {
        listEvents.add(
          Compra(
            compra: compraData["compra"],
            valor: compraData["valor"],
            id: compraId,
          ),
        );
      },
    );
    return Future.value();
  }

  Future deleteCompra(String id) async {
    Uri url = Uri.https(
        "poupan-ee992-default-rtdb.firebaseio.com", "/compras/$id.json");

    http.delete(url);
    return Future.value();
  }

  Future alterarCompra(String id, String compra, String valor) async {
    Uri url = Uri.https(
        "poupan-ee992-default-rtdb.firebaseio.com", "/compras/$id.json");

    http.patch(
      url,
      body: jsonEncode({
        "compra": compra,
        "valor": valor,
      }),
    );
    return Future.value();
  }
}
