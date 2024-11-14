
import 'package:clario_test_flutter/features/news/data/datasource/news_data_source.dart';
import 'package:clario_test_flutter/features/news/domain/models/news_item_model.dart';

class LocalNewsDataSource implements NewsDataSource {
  @override
  Future<NewsItemModel> getItem(String id) {
    // TODO: implement getItem
    throw UnimplementedError();
  }

  @override
  Future<List<NewsItemModel>> getList() {
    // TODO: implement getList
    throw UnimplementedError();
  }
}
