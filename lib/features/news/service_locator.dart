import 'package:clario_test_flutter/features/news/data/datasource/local_news_data_source.dart';
import 'package:clario_test_flutter/features/news/data/datasource/remote_news_data_source.dart';
import 'package:clario_test_flutter/features/news/data/repository/news_repository.dart';
import 'package:clario_test_flutter/features/news/domain/repository/a_news_repository.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

Future<void> loadServices() async {
  locator.registerSingleton<ANewsRepository>(
    NewsRepository(
      localDataSource: LocalNewsDataSource(),
      remoteDataSource: RemoteNewsDataSource(),
    ),
  );
}

Future<void> unloadServices() async {
  locator.unregister<ANewsRepository>();
}
