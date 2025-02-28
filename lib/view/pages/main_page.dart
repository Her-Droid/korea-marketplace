import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:korean_marketplace/core/uikit/components/bottom_nav_bar.dart';
import 'package:korean_marketplace/view/router/router.gr.dart';

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        CategoryRoute(),
        CommunityRoute(),
        ProfileRoute(),
      ],
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          bottomNavigationBar: UiKitBottomNavBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
          ),
        );
      },
    );
  }
}
