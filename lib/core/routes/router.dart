part of 'router_imports.dart';

final GlobalKey<NavigatorState> appRouterKey = GlobalKey<NavigatorState>();
final GoRouter _router = GoRouter(
  navigatorKey: appRouterKey,
  initialLocation: "/",
  routes: <RouteBase>[
    GoRoute(
      path: "/",
      name: "splash",
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: "/onboard",
      name: "onboard",
      builder: (context, state) => const OnboardScreen(),
    ),
    GoRoute(
      path: "/authchoice",
      name: "authchoice",
      builder: (context, state) => const AuthChoice(),
    ),
    GoRoute(
      path: "/login",
      name: "login",
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: "/signup",
      name: "signup",
      builder: (context, state) => const SignupPage(),
    ),
    GoRoute(
      path: "/general",
      name: "general",
      builder: (context, state) => const General(),
    ),
  ],
);
GoRouter get appRouter => _router;
