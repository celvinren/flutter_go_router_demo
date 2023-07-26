// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'routes.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $homeRoute,
    ];

RouteBase get $homeRoute => GoRouteData.$route(
      path: '/',
      factory: $HomeRouteExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'about',
          factory: $AboutRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'books',
          factory: $BooksRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'lab',
          factory: $LabRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'showcase',
          factory: $ShowcaseRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'uikits',
          factory: $UIKitsRouteExtension._fromState,
        ),
      ],
    );

extension $HomeRouteExtension on HomeRoute {
  static HomeRoute _fromState(GoRouterState state) => const HomeRoute();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AboutRouteExtension on AboutRoute {
  static AboutRoute _fromState(GoRouterState state) => const AboutRoute();

  String get location => GoRouteData.$location(
        '/about',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $BooksRouteExtension on BooksRoute {
  static BooksRoute _fromState(GoRouterState state) => const BooksRoute();

  String get location => GoRouteData.$location(
        '/books',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $LabRouteExtension on LabRoute {
  static LabRoute _fromState(GoRouterState state) => const LabRoute();

  String get location => GoRouteData.$location(
        '/lab',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ShowcaseRouteExtension on ShowcaseRoute {
  static ShowcaseRoute _fromState(GoRouterState state) => const ShowcaseRoute();

  String get location => GoRouteData.$location(
        '/showcase',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $UIKitsRouteExtension on UIKitsRoute {
  static UIKitsRoute _fromState(GoRouterState state) => const UIKitsRoute();

  String get location => GoRouteData.$location(
        '/uikits',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}
