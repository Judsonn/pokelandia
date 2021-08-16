import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokelandia/app/views/PokemonPage/Bloc/PokemonDetails/Pokemon_details_cubit.dart';

class PokemonCubit extends Cubit<int> {
  PokemonDetailsCubit pokemonDetailsCubit;

  PokemonCubit({@required this.pokemonDetailsCubit}) : super(null);

  void showPokemonDetails(int pokemonId) {
    print(pokemonId);
    pokemonDetailsCubit.getPokemonDetails(pokemonId);
    emit(pokemonId);
  }

  void popToPokedex() {
    emit(null);
    pokemonDetailsCubit.clearPokemonDetails();
  }
}
