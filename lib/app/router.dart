import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

export 'package:go_router/go_router.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

/// Shared paths / urls used across the app
class ScreenPaths {
  static String splash = '/';
  static String welcome = '/welcome';
  static String start = '/start';
  static String startWelcome = '/start_welcome';
  static String home = '/home';
}

/// Routing table, matches string paths to UI Screens, optionally parses params from the paths
final appRouter = GoRouter(
    navigatorKey: rootNavigatorKey,
    debugLogDiagnostics: true,
    redirect: _handleRedirect,
    routes: [
    ]);

class AnimatedAppRoute extends GoRoute {
  AnimatedAppRoute(String path, Widget Function(GoRouterState s) builder,
      {List<GoRoute> routes = const [], this.useFade = false})
      : super(
    path: path,
    routes: routes,
    pageBuilder: (context, state) {
      final pageContent = Scaffold(
        body: builder(state),
        resizeToAvoidBottomInset: false,
      );

      return CupertinoPage(
        key: state.pageKey,
        child: pageContent,
      );
    },
  );
  final bool useFade;
}

/// Custom GoRoute sub-class to make the router declaration easier to read
class AppRoute extends GoRoute {
  AppRoute(String path, Widget Function(GoRouterState s) builder,
    {List<GoRoute> routes = const [], this.useFade = false, int? index})
      : super(
    path: path,
    routes: routes,
    pageBuilder: (context, state) {
      final pageContent = Scaffold(
        body: builder(state),
        resizeToAvoidBottomInset: false,
      );
      // if (useFade) {
      //   return CustomTransitionPage(
      //     key: state.pageKey,
      //     child: pageContent,
      //     transitionsBuilder:
      //         (context, animation, secondaryAnimation, child) {
      //       return FadeTransition(opacity: animation, child: child);
      //     },
      //   );
      // }

      return NoTransitionPage(
        key: state.pageKey,
        child: pageContent,
      );
    },
  );
  final bool useFade;
}

String? _handleRedirect(BuildContext context, GoRouterState state) {
  // Prevent anyone from navigating away from `/` if app is starting up.
  // if (!appLogic.isBootstrapComplete && state.location != ScreenPaths.splash) {
  //   return ScreenPaths.splash;
  // }
  // debugPrint('Navigate to: ${state.location}');
  return null; // do nothing
}

CustomTransitionPage buildPageWithoutAnimation({
  required BuildContext context,
  required GoRouterState state,
  required Widget child,
}) {
  return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
      child);
}
