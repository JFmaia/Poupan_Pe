// ignore: unused_import
import 'package:http/http.dart' as http;

class HomeController {
  Uri url =
      Uri.https("poupan-ee992-default-rtdb.firebaseio.com", "/compras.json");

  List<String> listDeComPras = [];

  Future<void> getCompras() {
    return http.get(url);
  }
}
