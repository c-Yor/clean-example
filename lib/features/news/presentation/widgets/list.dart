import 'package:clario_test_flutter/features/news/presentation/cubit/news_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsListCubit, NewsListState>(
      builder: (context, state) {
        return Container(
          width: 300,
          height: 300,
          color: Colors.red,
        );
      },
    );
  }
}
