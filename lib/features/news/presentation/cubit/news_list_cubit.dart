import 'package:clario_test_flutter/features/news/domain/repository/a_news_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'news_list_state.dart';

class NewsListCubit extends Cubit<NewsListState> {
  NewsListCubit({
    required this.repository,
  }) : super(NewsListInitial());

  final ANewsRepository repository;
}
