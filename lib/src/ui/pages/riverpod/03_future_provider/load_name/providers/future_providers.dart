// ignore_for_file: avoid_print
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../../../core/helpers/pokemon_information.dart';

part 'future_providers.g.dart';

@Riverpod(keepAlive: true)
Future<String> pokemonName(PokemonNameRef ref) async {
  final pokemonId = ref.watch(pokemonIdProvider);
  final pokemonName = await PokemonInformation.getPokemonName(pokemonId);

  ref.onDispose(() {
    print('Estamos a punto de eliminar este provider');
  });

  return pokemonName;
}

@Riverpod(keepAlive: true)
class PokemonId extends _$PokemonId {
  @override
  int build() => 1;

  void nextPokemon() {
    state++;
  }

  void prevPokemon() {
    if (state > 1) {
      state--;
    }
  }
}

@Riverpod(keepAlive: true)
Future<String> pokemon(PokemonRef ref, int pokemonId) async {
  final pokemonName = await PokemonInformation.getPokemonName(pokemonId);
  return pokemonName;
}
