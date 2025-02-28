import 'package:auto_route/auto_route.dart';
import 'package:korean_marketplace/view/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainRoute.page,
          initial: true,
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: CategoryRoute.page),
            AutoRoute(page: CommunityRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
        AutoRoute(page: DetailProfileRoute.page),
      ];
}
