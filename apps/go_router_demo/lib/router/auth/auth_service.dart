import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_service.g.dart';

@riverpod
class AuthService extends _$AuthService {
  @override
  AuthStatus build() {
    startTimer();
    return AuthStatus.authenticated;
  }

  void startTimer() {
    Timer.periodic(const Duration(seconds: 10), (timer) {
      state = state == AuthStatus.unauthenticated
          ? AuthStatus.authenticated
          : AuthStatus.unauthenticated;
    });
  }
}

enum AuthStatus {
  authenticated,
  unauthenticated,
}
