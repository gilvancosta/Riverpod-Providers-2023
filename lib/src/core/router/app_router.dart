// ignore_for_file: avoid_print
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../ui/pages/home/home_page.dart';
import '../../ui/pages/riverpod/01_provider/hello_world/provider_screen.dart';
import '../../ui/pages/riverpod/01_provider/provider_router/router_screen.dart';

import '../../ui/pages/riverpod/02_notifier_provider/example01/notifier_provider_screen.dart';

import '../../ui/pages/riverpod/02_notifier_provider/todo/todo_screen.dart';

import '../../ui/pages/riverpod/03_future_provider/family_future_provider/future_provider_screen.dart';
import '../../ui/pages/riverpod/03_future_provider/load_name/future_provider_screen.dart';
import '../../ui/pages/riverpod/04_stream_provider/stream_name/stream_provider_screen.dart';

part 'app_router.g.dart';

@riverpod
GoRouter appRouter(AppRouterRef ref) {
  print('appRouter!!!!');

  return GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/provider',
      builder: (context, state) => const ProviderScreen(),
    ),
    GoRoute(
      path: '/provider-router',
      builder: (context, state) => const RouterScreen(),
    ),
    GoRoute(
      path: '/notifier-provider',
      builder: (context, state) => const NotifierProviderScreen(),
    ),
    GoRoute(
      path: '/todo',
      builder: (context, state) => const TodoScreen(),
    ),
    GoRoute(
      path: '/future-provider',
      builder: (context, state) => const FutureProviderScreen(),
    ),
    GoRoute(
      path: '/future-family-provider',
      builder: (context, state) => const FamilyFutureScreen(),
    ),
    GoRoute(
      path: '/stream-provider',
      builder: (context, state) => const StreamProviderScreen(),
    ),
  ]);
}
