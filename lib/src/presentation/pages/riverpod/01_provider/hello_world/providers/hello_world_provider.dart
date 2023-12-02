import 'dart:math';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../../core/helpers/random_generator.dart';

part 'hello_world_provider.g.dart';

@riverpod
String helloWorld(HelloWorldRef ref) {
  return 'Hello World ${Random().nextInt(100)}';
}

@riverpod
String randomGenerator(RandomGeneratorRef ref) {
  return RandomGenerator.getRandomName();
}



//final randomGeneratorProvider = Provider<String>((ref) => RandomGenerator.getRandomName());