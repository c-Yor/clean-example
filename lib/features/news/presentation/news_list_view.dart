import 'package:auto_route/auto_route.dart';
import 'package:clario_test_flutter/core/config/service_locator.dart';
import 'package:clario_test_flutter/core/router/router.gr.dart';
import 'package:clario_test_flutter/features/news/domain/models/news_item_model.dart';
import 'package:clario_test_flutter/features/news/domain/repository/a_news_repository.dart';
import 'package:clario_test_flutter/features/news/presentation/cubit/news_list_cubit.dart';
import 'package:clario_test_flutter/features/news/presentation/widgets/list.dart';
import 'package:clario_test_flutter/shared/widgets/app_elevated_button/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsListCubit(
        repository: locator<ANewsRepository>(),
      ),
      child: BlocBuilder<NewsListCubit, NewsListState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: const Text("News List View"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '$_counter',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  const NewsList(),
                  AppElevatedButton(
                    onPressed: () {
                      context.pushRoute(
                        NewsItemRoute(
                          id: '12',
                          data: NewsItemModel(id: ''),
                        ),
                      );
                      // context.navigateNamedTo('/news/15');
                    },
                    child: const Text("View Item"),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          );
        },
      ),
    );
  }
}
