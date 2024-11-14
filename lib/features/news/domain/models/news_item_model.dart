
class NewsItemModel {
  final String id;

  NewsItemModel({
    required this.id,
  });

  NewsItemModel copyWith({
    String? id,
  }) {
    return NewsItemModel(
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toDocument() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory NewsItemModel.fromDocument(Map<String, dynamic> document) {
    return NewsItemModel(
      id: document['id'] as String,
    );
  }

  Map<String, dynamic> toDB() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory NewsItemModel.fromDB(Map<String, dynamic> document) {
    return NewsItemModel(
      id: document['id'] as String,
    );
  }

  @override
  String toString() => 'NewsItemModel(id: $id)';

  @override
  bool operator ==(covariant NewsItemModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id;
  }

  @override
  int get hashCode => id.hashCode;
}
