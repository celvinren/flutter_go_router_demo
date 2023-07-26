import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../pages/about_screen.dart';
import '../../pages/auth/auth_screen.dart';
import '../../pages/auth/unauth_screen.dart';
import '../../pages/book_screen.dart';
import '../../pages/home_screen.dart';
import '../../pages/lab_screen.dart';
import '../../pages/showcase_screen.dart';
import '../../pages/ui_kits_screen.dart';

part 'routes.g.dart';

@TypedGoRoute<HomeRoute>(
  path: '/',
  routes: [
    TypedGoRoute<AboutRoute>(
      path: 'about',
    ),
    TypedGoRoute<BooksRoute>(path: 'books'),
    TypedGoRoute<LabRoute>(path: 'lab'),
    TypedGoRoute<ShowcaseRoute>(path: 'showcase'),
    TypedGoRoute<UIKitsRoute>(path: 'uikits'),
    TypedGoRoute<AuthRoute>(path: 'auth'),
    TypedGoRoute<UnauthRoute>(path: 'unauth'),
  ],
)
@immutable
class HomeRoute extends GoRouteData {
  static const path = '/';
  const HomeRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const HomeScreen();
  }
}

@immutable
class AboutRoute extends GoRouteData {
  const AboutRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const AboutScreen();
  }
}

@immutable
class BooksRoute extends GoRouteData {
  const BooksRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const BooksScreen();
  }
}

@immutable
class LabRoute extends GoRouteData {
  const LabRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const LabScreen();
  }
}

@immutable
class ShowcaseRoute extends GoRouteData {
  const ShowcaseRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const ShowcaseScreen();
  }
}

@immutable
class UIKitsRoute extends GoRouteData {
  const UIKitsRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const UIKitsScreen();
  }
}

@immutable
class AuthRoute extends GoRouteData {
  const AuthRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const AuthScreen();
  }
}

@immutable
class UnauthRoute extends GoRouteData {
  const UnauthRoute();

  @override
  Widget build(
    BuildContext context,
    GoRouterState state,
  ) {
    return const UnauthScreen();
  }
}
