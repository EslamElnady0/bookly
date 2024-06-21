import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

extension GoRouterExt on BuildContext {
  void goTo({required String routeName, Object? extra}) {
    GoRouter.of(this).push(routeName, extra: extra);
  }

  void pop() {
    GoRouter.of(this).pop();
  }
}
