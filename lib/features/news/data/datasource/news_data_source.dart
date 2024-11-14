
import 'package:clario_test_flutter/features/news/domain/models/news_item_model.dart';

abstract class NewsDataSource {
  Future<NewsItemModel> getItem(String id);
  Future<List<NewsItemModel>> getList();
}
