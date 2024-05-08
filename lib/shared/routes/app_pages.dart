import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_boilerplate/features/authentication/views/login_view.dart';
import 'package:riverpod_boilerplate/features/root/views/root_view.dart';
import 'package:riverpod_boilerplate/features/splash/views/splash_view.dart';
import 'package:go_router/go_router.dart';

class RoutePath {
  static const root = '/';
  static const splash = '/splash';
  static const login = '/login';
  static const register = '/register';
  static const home = '/home';
  static const favorite = '/favorite';
  static const settings = '/settings';
}

class AppPages {
  AppPages._();
  static const initial = RoutePath.root;
}

final authProvider = StateProvider((_) => false);

final routerProvider = Provider<GoRouter>((ref) {
  // final authState = ref.watch(authProvider);

  return GoRouter(
    debugLogDiagnostics: true, // Enable for debugging logs (optional)
    // refreshListenable:
    //     authState, // Update routes based on auth state (optional)
    routes: [
      GoRoute(
        path: RoutePath.root,
        name: RoutePath.root,
        builder: (context, state) => const RootView(),
      ),
      GoRoute(
        path: RoutePath.splash,
        name: RoutePath.splash,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: RoutePath.settings,
        name: RoutePath.settings,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: RoutePath.login,
        name: RoutePath.login,
        builder: (context, state) => const LoginView(),
        // Guard to redirect to login if not authenticated (example)
        // guards: [
        //   (context, state) => state.authState ? null : '/login',
        // ],
      ),
      // Add more routes for your app
    ],
  );
});
