// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:clario_test_flutter/features/main/presentation/main_view.dart'
    as _i1;
import 'package:clario_test_flutter/features/news/domain/models/news_item_model.dart'
    as _i10;
import 'package:clario_test_flutter/features/news/presentation/news_item_view.dart'
    as _i2;
import 'package:clario_test_flutter/features/news/presentation/news_list_view.dart'
    as _i3;
import 'package:clario_test_flutter/features/news/presentation/news_view.dart'
    as _i4;
import 'package:clario_test_flutter/features/settings/presentation/settings_view.dart'
    as _i5;
import 'package:clario_test_flutter/features/sign_in/presentation/sign_in_view.dart'
    as _i6;
import 'package:clario_test_flutter/features/sign_up/presentation/sign_up_view.dart'
    as _i7;
import 'package:flutter/material.dart' as _i9;

/// generated route for
/// [_i1.MainView]
class MainRoute extends _i8.PageRouteInfo<void> {
  const MainRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.MainView();
    },
  );
}

/// generated route for
/// [_i2.NewsItemView]
class NewsItemRoute extends _i8.PageRouteInfo<NewsItemRouteArgs> {
  NewsItemRoute({
    _i9.Key? key,
    required String id,
    _i10.NewsItemModel? data,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          NewsItemRoute.name,
          args: NewsItemRouteArgs(
            key: key,
            id: id,
            data: data,
          ),
          rawPathParams: {'id': id},
          initialChildren: children,
        );

  static const String name = 'NewsItemRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<NewsItemRouteArgs>(
          orElse: () => NewsItemRouteArgs(id: pathParams.getString('id')));
      return _i2.NewsItemView(
        key: args.key,
        id: args.id,
        data: args.data,
      );
    },
  );
}

class NewsItemRouteArgs {
  const NewsItemRouteArgs({
    this.key,
    required this.id,
    this.data,
  });

  final _i9.Key? key;

  final String id;

  final _i10.NewsItemModel? data;

  @override
  String toString() {
    return 'NewsItemRouteArgs{key: $key, id: $id, data: $data}';
  }
}

/// generated route for
/// [_i3.NewsListView]
class NewsListRoute extends _i8.PageRouteInfo<void> {
  const NewsListRoute({List<_i8.PageRouteInfo>? children})
      : super(
          NewsListRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsListRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.NewsListView();
    },
  );
}

/// generated route for
/// [_i4.NewsView]
class NewsRoute extends _i8.PageRouteInfo<void> {
  const NewsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          NewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'NewsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.NewsView();
    },
  );
}

/// generated route for
/// [_i5.SettingsView]
class SettingsRoute extends _i8.PageRouteInfo<void> {
  const SettingsRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i5.SettingsView();
    },
  );
}

/// generated route for
/// [_i6.SignInView]
class SignInRoute extends _i8.PageRouteInfo<void> {
  const SignInRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SignInRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignInRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.SignInView();
    },
  );
}

/// generated route for
/// [_i7.SignUpView]
class SignUpRoute extends _i8.PageRouteInfo<void> {
  const SignUpRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SignUpRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignUpRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.SignUpView();
    },
  );
}
