import 'package:hasura_connect/hasura_connect.dart';
import 'package:poupan_pe/models/compras.dart';

class Repositorio {
  final response = HasuraConnect("https://poupan-pe.hasura.app/v1/graphql");

  Future<List<Compras>> getCompras() async {
    var query = """ 
        query getCompras {
          poupan_pe_compras {
            id
            title
            value
            created_at
          }
        }
    """;

    var snapshot = await response.query(query);
    return Compras.fromJsonList(snapshot['data']['poupan_pe_compras'] as List);
  }
}
