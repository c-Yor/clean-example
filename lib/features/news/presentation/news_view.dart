import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../service_locator.dart';

@RoutePage()
class NewsView extends StatefulWidget {
  const NewsView({
    super.key,
  });

  @override
  State<NewsView> createState() => _NewsViewState();
}

class _NewsViewState extends State<NewsView> {
  @override
  void initState() {
    loadServices();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
  @override
  void dispose() {
    unloadServices();
    super.dispose();
  }
}
