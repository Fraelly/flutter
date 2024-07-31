import 'dart:convert';

class Cooperativas {
  final int userId;
  final int id;
  final String title;

  const Cooperativas({
    required this.userId,
    required this.id,
    required this.title,
  });

  Cooperativas copyWith({
    int? userId,
    int? id,
    String? title,
  }) {
    return Cooperativas(
      userId: userId ?? this.userId,
      id: id ?? this.id,
      title: title ?? this.title,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
    };
  }

  factory Cooperativas.fromMap(Map<String, dynamic> map) {
    return Cooperativas(
      userId: map['userId']?.toInt() ?? 0,
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Cooperativas.fromJson(String source) =>
      Cooperativas.fromMap(json.decode(source));

  @override
  String toString() => 'Cooperativas(userId: $userId, id: $id, title: $title)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Cooperativas &&
        other.userId == userId &&
        other.id == id &&
        other.title == title;
  }

  @override
  int get hashCode => userId.hashCode ^ id.hashCode ^ title.hashCode;

  mergeFromProto3Json(decode, {required bool ignoreUnknownFields}) {}
}
