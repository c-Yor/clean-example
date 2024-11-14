import 'package:auto_route/auto_route.dart';
import 'package:clario_test_flutter/core/config/service_locator.dart';
import 'package:clario_test_flutter/features/news/domain/models/news_item_model.dart';
import 'package:clario_test_flutter/features/news/domain/repository/a_news_repository.dart';
import 'package:clario_test_flutter/features/news/presentation/cubit/news_item_cubit.dart';
import 'package:clario_test_flutter/shared/widgets/app_elevated_button/app_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class NewsItemView extends StatefulWidget {
  const NewsItemView({
    super.key,
    @PathParam('id') required this.id,
    this.data,
  });

  final String id;
  final NewsItemModel? data;

  @override
  State<NewsItemView> createState() => _NewsItemViewState();
}

class _NewsItemViewState extends State<NewsItemView> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsItemCubit(
        repository: locator<ANewsRepository>(),
      ),
      child: BlocConsumer<NewsItemCubit, NewsItemState>(
        listener: (context, state) {
          if (state is NewsItemError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.text),
              ),
            );
            // Navigator.of(context).pop();
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
              title: Text("News Item View ${widget.id}"),
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
                  AppElevatedButton(
                    onPressed: () {
                      BlocProvider.of<NewsItemCubit>(context).getItem();
                    },
                    child: const Text("get error"),
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
