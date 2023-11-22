// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/helpers/random_generator.dart';
import '../../theme_changer/providers/theme_changer_provider.dart';
import 'providers/state_providers.dart';

class StateProviderScreen extends ConsumerWidget {
  const StateProviderScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final counter = ref.watch(counterProvider);
    final isDarkMode = ref.watch(themeNotifierProvider).isDarkmode;
    final userName = ref.watch(userNameProvider);

    print('StateProviderScreen build!!!');
    return Scaffold(
      appBar: AppBar(
        title: const Text('State Provider'),
      ),
      body: Center(
          child: Column(
        children: [
          const Spacer(
            flex: 1,
          ),
          IconButton(
            icon: Icon(
                // icon: const Icon( Icons.light_mode_outlined, size: 100 ),
                isDarkMode
                    ? Icons.light_mode_outlined
                    : Icons.light_mode_outlined,
                size: 100),
            onPressed: () {
              // ref.read(darkModeProvider.notifier).toggleDarkMode();
              ref.read(themeNotifierProvider.notifier).toggleDarkmode();
            },
          ),
          const SizedBox(height: 20),
          Text(userName.toString(), style: const TextStyle(fontSize: 25)),
          const SizedBox(height: 20),
          TextButton.icon(
            icon: const Icon(Icons.add, size: 50),
            label: Consumer(builder: (context, refLocal, _) {
              final counter = refLocal.watch(counterProvider);

              return Text(counter.toString(),
                  style: const TextStyle(fontSize: 100));
            }),
            onPressed: () {
              ref.read(counterProvider.notifier).increaseByOne();
            },
          ),
          const Spacer(flex: 2),
        ],
      )),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Nome Aleatório'),
        icon: const Icon(Icons.refresh_rounded),
        onPressed: () {
          ref
              .read(userNameProvider.notifier)
              .changeName(RandomGenerator.getRandomName());
        },
      ),
    );
  }
}
