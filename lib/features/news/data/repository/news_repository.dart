import 'package:clario_test_flutter/features/news/data/datasource/news_data_source.dart';
import 'package:clario_test_flutter/features/news/domain/exceptions/network_exception.dart';
import 'package:clario_test_flutter/features/news/domain/models/news_item_model.dart';
import 'package:clario_test_flutter/features/news/domain/repository/a_news_repository.dart';

class NewsRepository implements ANewsRepository {
  NewsRepository({
    required this.localDataSource,
    required this.remoteDataSource,
  });

  final NewsDataSource localDataSource;
  final NewsDataSource remoteDataSource;
  // usecases....

  @override
  Future<NewsItemModel> getItem(String id) {
    throw NetworkException(text: 'NetworkError text');
  }

  @override
  Future<List<NewsItemModel>> getList() {
    // TODO: implement getList
    throw UnimplementedError();
  }

  @override
  Future<void> like(String id) {
    // TODO: implement like
    throw UnimplementedError();
  }
}
