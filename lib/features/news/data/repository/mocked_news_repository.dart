
import 'package:clario_test_flutter/features/news/domain/models/news_item_model.dart';
import 'package:clario_test_flutter/features/news/domain/repository/a_news_repository.dart';

class MockedNewsRepository implements ANewsRepository {
  @override
  Future<NewsItemModel> getItem(String id) async {
    return NewsItemModel(id: '');
  }

  @override
  Future<List<NewsItemModel>> getList() async {
    return [];
  }

  @override
  Future<void> like(String id) async {
  }
}
