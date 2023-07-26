import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../auth/auth_service.dart';

part 'router_notifier.g.dart';

/// This notifier is meant to implement the [Listenable] our [GoRouter] needs.
///
/// We aim to trigger redirects whenever's needed.
/// This is done by calling our (only) listener everytime we want to notify stuff.
/// This allows to centralize global redirecting logic in this class.
/// In this simple case, we just listen to auth changes.
///
/// SIDE NOTE.
/// This might look overcomplicated at a first glance;
/// Instead, this method aims to follow some good some good practices:
///   1. It doesn't require us to pipe down any `ref` parameter
///   2. It works as a complete replacement for [ChangeNotifier] (it's a [Listenable] implementation)
///   3. It allows for listening to multiple providers if needed (we do have a [Ref] now!)
///
@riverpod
class RouterNotifier extends _$RouterNotifier implements Listenable {
  VoidCallback? routerListener;

  // if we need to watch some providers
  @override
  Future<void> build() async {
    ref.watch(authServiceProvider);
    routerListener?.call();
  }

  // redirects if we need them
  String? redirect(BuildContext context, GoRouterState state) {
    final authStatus = ref.watch(authServiceProvider);
    if (authStatus == AuthStatus.unauthenticated) {
      return '/unauth';
    }
    return state.fullPath == '/unauth' ? '/' : null;
  }

  @override
  void addListener(VoidCallback listener) {
    routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    routerListener = null;
  }
}
