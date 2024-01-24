// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:trinity_lecture_app/presentation/pages/categories_page.dart'
    as _i1;
import 'package:trinity_lecture_app/presentation/pages/counter_page.dart'
    as _i2;
import 'package:trinity_lecture_app/presentation/pages/dummy_listgrid_page.dart'
    as _i3;
import 'package:trinity_lecture_app/presentation/pages/input_validation_page.dart'
    as _i5;
import 'package:trinity_lecture_app/presentation/pages/main_dummy_page.dart'
    as _i4;
import 'package:trinity_lecture_app/presentation/pages/main_news_page.dart'
    as _i6;
import 'package:trinity_lecture_app/presentation/pages/most_popular_page.dart'
    as _i7;
import 'package:trinity_lecture_app/presentation/pages/splash_page.dart' as _i8;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    CategoriesNewsRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CategoriesNewsPage(),
      );
    },
    CounterRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CounterPage(),
      );
    },
    DummyListGridRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DummyListGridPage(),
      );
    },
    DummyUIRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DummyUIPage(),
      );
    },
    InputValidationRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.InputValidationPage(),
      );
    },
    MainNewsRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.MainNewsPage(),
      );
    },
    MostPopularRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.MostPopularPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.SplashPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CategoriesNewsPage]
class CategoriesNewsRoute extends _i9.PageRouteInfo<void> {
  const CategoriesNewsRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CategoriesNewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'CategoriesNewsRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CounterPage]
class CounterRoute extends _i9.PageRouteInfo<void> {
  const CounterRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CounterRoute.name,
          initialChildren: children,
        );

  static const String name = 'CounterRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.DummyListGridPage]
class DummyListGridRoute extends _i9.PageRouteInfo<void> {
  const DummyListGridRoute({List<_i9.PageRouteInfo>? children})
      : super(
          DummyListGridRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyListGridRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DummyUIPage]
class DummyUIRoute extends _i9.PageRouteInfo<void> {
  const DummyUIRoute({List<_i9.PageRouteInfo>? children})
      : super(
          DummyUIRoute.name,
          initialChildren: children,
        );

  static const String name = 'DummyUIRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.InputValidationPage]
class InputValidationRoute extends _i9.PageRouteInfo<void> {
  const InputValidationRoute({List<_i9.PageRouteInfo>? children})
      : super(
          InputValidationRoute.name,
          initialChildren: children,
        );

  static const String name = 'InputValidationRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.MainNewsPage]
class MainNewsRoute extends _i9.PageRouteInfo<void> {
  const MainNewsRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MainNewsRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainNewsRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.MostPopularPage]
class MostPopularRoute extends _i9.PageRouteInfo<void> {
  const MostPopularRoute({List<_i9.PageRouteInfo>? children})
      : super(
          MostPopularRoute.name,
          initialChildren: children,
        );

  static const String name = 'MostPopularRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.SplashPage]
class SplashRoute extends _i9.PageRouteInfo<void> {
  const SplashRoute({List<_i9.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
