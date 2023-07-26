import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../pages/app_shared_scaffold.dart';
import '../pages/error_screen.dart';
import 'helper/router_notifier.dart';
import 'helper/routes.dart';

part 'router_service.g.dart';

final _shellNavKey = GlobalKey<NavigatorState>(debugLabel: 'shellNavKey');
final _rootNavKey = GlobalKey<NavigatorState>(debugLabel: 'rootNavKey');

@riverpod
GoRouter routerService(
  RouterServiceRef ref,
) {
  final notifier = ref.watch(routerNotifierProvider.notifier);

  return GoRouter(
    routes: [
      ShellRoute(
        builder: (
          BuildContext context,
          GoRouterState state,
          Widget child,
        ) {
          return AppSharedScaffold(contentChild: child);
        },
        routes: $appRoutes,
        navigatorKey: _shellNavKey,
      ),
    ],
    // For 404's
    errorBuilder: (
      context,
      state,
    ) =>
        const ErrorScreen(),
    redirect: notifier.redirect,
    refreshListenable: notifier,
    initialLocation: HomeRoute.path,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavKey,
  );
}
