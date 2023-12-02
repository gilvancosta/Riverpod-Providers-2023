// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers/theme_changer_provider.dart';
import 'widgets/theme_changer_widget.dart';

class ThemeChangerPage extends ConsumerWidget {
  static const titlePage = 'Theme CHanger Page';
  const ThemeChangerPage({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final isDarkMode = ref.watch(themeNotifierProvider).isDarkmode;

    return Scaffold(
      appBar: AppBar(
        title: const Text(titlePage),
        actions: [
          IconButton(
            icon: Icon(isDarkMode
                ? Icons.dark_mode_outlined
                : Icons.light_mode_outlined),
            onPressed: () {
              print('isDarkMode: $isDarkMode');
              //ref.read(isDarkModeProvider2.notifier).update((state) => !state);
              ref.read(themeNotifierProvider.notifier).toggleDarkmode();
            },
          ),
        ],
      ),
      body: const ThemeChangerView(),
    );
  }
}
