// ignore_for_file: avoid_print
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../ui/pages/home/home_page.dart';
import '../../ui/pages/riverpod/01_provider/provider_screen.dart';
import '../../ui/pages/riverpod/02_provider_router/router_screen.dart';
import '../../ui/pages/riverpod/03_state_provider/state_provider_screen.dart';
import '../../ui/pages/riverpod/04_todo/todo_screen.dart';
import '../../ui/pages/riverpod/05_future_provider/future_provider_screen.dart';
import '../../ui/pages/riverpod/06_family_future_provider/future_provider_screen.dart';
import '../../ui/pages/riverpod/07_stream_provider/stream_provider_screen.dart';
import '../../ui/pages/riverpod/08_state_notifier/state_notifier_screen.dart';
import '../../ui/pages/riverpod/09_change_notifier/change_notifier_screen.dart';

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
      path: '/state-provider',
      builder: (context, state) => const StateProviderScreen(),
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
    GoRoute(
      path: '/change-notifier-provider',
      builder: (context, state) => const ChangeNotifierScreen(),
    ),
    GoRoute(
      path: '/state-notifier-provider',
      builder: (context, state) => const StateNotifierScreen(),
    ),
  ]);
}
