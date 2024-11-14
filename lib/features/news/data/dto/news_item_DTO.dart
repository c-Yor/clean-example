import 'package:clario_test_flutter/features/news/domain/models/news_item_model.dart';

class NewsItemDTO {
  final String id;

  NewsItemDTO({
    required this.id,
  });

  factory NewsItemDTO.fromEntity(NewsItemModel data) {
    return NewsItemDTO(
      id: data.id,
    );
  }

  NewsItemModel toEntity() {
    return NewsItemModel(
      id: id,
    );
  }

  factory NewsItemDTO.fromDocument(Map<String, dynamic> document) {
    return NewsItemDTO(
      id: document['id'] as String,
    );
  }

  Map<String, dynamic> toDocument() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory NewsItemDTO.fromDB(Map<String, dynamic> document) {
    return NewsItemDTO(
      id: document['id'] as String,
    );
  }

  Map<String, dynamic> toDB() {
    return <String, dynamic>{
      'id': id,
    };
  }

  @override
  String toString() => 'NewsItemDTO(id: $id)';

  @override
  bool operator ==(covariant NewsItemDTO other) {
    if (identical(this, other)) return true;

    return other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}