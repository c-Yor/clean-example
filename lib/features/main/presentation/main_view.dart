import 'package:auto_route/auto_route.dart';
import 'package:clario_test_flutter/core/router/router.gr.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MainView extends StatelessWidget {
  const MainView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        NewsRoute(),
        SettingsRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            items: const [
              BottomNavigationBarItem(
                label: 'News',
                icon: Icon(Icons.dangerous),
              ),
              BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(Icons.dangerous),
              ),
            ],
          ),
        );
      },
    );
  }
}
