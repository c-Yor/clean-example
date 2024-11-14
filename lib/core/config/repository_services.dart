part of 'service_locator.dart';

Future<void> setupRepositoryServices() async {
  locator.registerSingleton<ANewsRepository>(
    NewsRepository(
      localDataSource: LocalNewsDataSource(),
      remoteDataSource: RemoteNewsDataSource(),
    ),
  );
}
