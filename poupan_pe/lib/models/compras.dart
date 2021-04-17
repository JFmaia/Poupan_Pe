// To parse this JSON data, do
//
//     final compras = comprasFromMap(jsonString);

import 'dart:convert';

class Compras {
  Compras({
    this.id,
    this.title,
    this.value,
    this.createdAt,
  });

  final String id;
  final String title;
  final double value;
  final DateTime createdAt;

  Compras copyWith({
    String id,
    String title,
    double value,
    DateTime createdAt,
  }) =>
      Compras(
        id: id ?? this.id,
        title: title ?? this.title,
        value: value ?? this.value,
        createdAt: createdAt ?? this.createdAt,
      );

  factory Compras.fromJson(String str) => Compras.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Compras.fromMap(Map<String, dynamic> json) => Compras(
        id: json["id"],
        title: json["title"],
        value: json["value"].toDouble(),
        createdAt: DateTime.parse(json["created_at"]),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "title": title,
        "value": value,
        "created_at": createdAt.toIso8601String(),
      };

  static List<Compras> fromJsonList(List list) {
    if (list == null) return null;
    return list.map<Compras>((item) => Compras.fromMap(item)).toList();
  }
}
