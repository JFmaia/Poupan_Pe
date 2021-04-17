import 'package:poupan_pe/data/repositorio.dart';
import 'package:poupan_pe/models/compras.dart';
import 'package:rx_notifier/rx_notifier.dart';

class Controller {
  final Repositorio _repositorio;
  final list = RxList<Future<List<Compras>>>([]);
  Controller(this._repositorio) {
    _init();
  }

  void _init() {
    final event = _repositorio.getCompras();
    list.add(event);
  }

  void dispose() {}
}
