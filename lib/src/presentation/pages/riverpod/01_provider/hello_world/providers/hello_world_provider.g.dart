// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hello_world_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$helloWorldHash() => r'6bd71dabd74906583627ecb9c6d00efab8b02a2f';

/// See also [helloWorld].
@ProviderFor(helloWorld)
final helloWorldProvider = AutoDisposeProvider<String>.internal(
  helloWorld,
  name: r'helloWorldProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$helloWorldHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef HelloWorldRef = AutoDisposeProviderRef<String>;
String _$randomGeneratorHash() => r'935df24933fb398160f90fb7b143f70be3460db1';

/// See also [randomGenerator].
@ProviderFor(randomGenerator)
final randomGeneratorProvider = AutoDisposeProvider<String>.internal(
  randomGenerator,
  name: r'randomGeneratorProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$randomGeneratorHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef RandomGeneratorRef = AutoDisposeProviderRef<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
