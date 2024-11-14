part of 'news_item_cubit.dart';

@immutable
sealed class NewsItemState {}

final class NewsItemInitial extends NewsItemState {}

final class NewsItemError extends NewsItemState {
  final String text;

  NewsItemError({required this.text});
}
