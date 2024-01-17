import 'package:auto_route/auto_route.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> routes = [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: DummyUIRoute.page, path: '/mainDummyPage'),
    AutoRoute(page: DummyListGridRoute.page, path: '/dummyListGridPage'),
    AutoRoute(page: CounterRoute.page, path: '/counterPage'),
    AutoRoute(page: InputValidationRoute.page, path: '/inputValidationPage'),
    AutoRoute(page: MainNewsRoute.page, path: '/mainNewsPage'),
    AutoRoute(page: MostPopularRoute.page, path: '/mostPopularPage'),
  ];
}
