import 'dart:convert';

import 'package:flutter/widgets.dart';

class Cooperativas {
  final int? id;
  final String nome;
  final String presidente;
  final String fone;
  Cooperativas({
    required this.id,
    required this.nome,
    required this.presidente,
    required this.fone,
  });

  Cooperativas copyWith({
    ValueGetter<int?>? id,
    String? nome,
    String? presidente,
    String? fone,
  }) {
    return Cooperativas(
      id: id != null ? id() : this.id,
      nome: nome ?? this.nome,
      presidente: presidente ?? this.presidente,
      fone: fone ?? this.fone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'presidente': presidente,
      'fone': fone,
    };
  }

  factory Cooperativas.fromMap(Map<String, dynamic> map) {
    return Cooperativas(
      id: map['id']?.toInt(),
      nome: map['nome'] ?? '',
      presidente: map['presidente'] ?? '',
      fone: map['fone'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Cooperativas.fromJson(String source) =>
      Cooperativas.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Cooperativas(id: $id, nome: $nome, presidente: $presidente, fone: $fone)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cooperativas &&
        other.id == id &&
        other.nome == nome &&
        other.presidente == presidente &&
        other.fone == fone;
  }

  @override
  int get hashCode {
    return id.hashCode ^ nome.hashCode ^ presidente.hashCode ^ fone.hashCode;
  }
}
