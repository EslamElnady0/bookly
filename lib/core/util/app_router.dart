import 'package:bookly/features/home/presentation/views/home_view.dart';
import 'package:bookly/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const String splash = '/';
  static const String home = '/home';

  // GoRouter configuration
  static GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: home,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
