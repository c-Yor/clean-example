import 'package:clario_test_flutter/features/news/domain/repository/a_news_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'news_item_state.dart';

class NewsItemCubit extends Cubit<NewsItemState> {
  NewsItemCubit({
    required this.repository,
  }) : super(NewsItemInitial());

  final ANewsRepository repository;

  void getItem() async {
    // emit loading
    try {
      await repository.getItem('id');
      // ....
    } catch (e) {
      emit(NewsItemError(text: e.toString()));
    }
    // emit ne loading
  }

  void saveLocal() async {
      // await repository.saveLocal('id');
  }
}
