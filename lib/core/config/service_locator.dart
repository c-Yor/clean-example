import 'package:clario_test_flutter/core/router/router.dart';
import 'package:clario_test_flutter/core/theme/colors/app_light_colors.dart';
import 'package:clario_test_flutter/core/theme/cubit/theme_cubit.dart';
import 'package:clario_test_flutter/core/theme/data/light_theme_data.dart';
import 'package:clario_test_flutter/core/theme/spacers/app_base_spacers.dart';
import 'package:clario_test_flutter/core/theme/texts/app_base_texts.dart';
import 'package:clario_test_flutter/features/news/data/datasource/local_news_data_source.dart';
import 'package:clario_test_flutter/features/news/data/datasource/remote_news_data_source.dart';
import 'package:clario_test_flutter/features/news/data/repository/news_repository.dart';
import 'package:clario_test_flutter/features/news/domain/repository/a_news_repository.dart';
import 'package:get_it/get_it.dart';

part 'core_services.dart';
part 'repository_services.dart';

final GetIt locator = GetIt.instance;

Future<void> setupServiceLocator() async {
  setupCoreServices();
  setupRepositoryServices();
}
