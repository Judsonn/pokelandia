import 'package:flutter/material.dart';
import 'package:pokelandia/app/models/pokemon_model.dart';

abstract class PokemonState {}

class PokemonInitial extends PokemonState {}

class PokemonLoadInProgress extends PokemonState {}

class PokemonPageLoadSuccess extends PokemonState {
  final List<PokemonModel> pokemonListings;
  final bool canLoadNextPage;

  PokemonPageLoadSuccess(
      {@required this.pokemonListings, @required this.canLoadNextPage});
}

class PokemonPageLoadFailed extends PokemonState {
  final Error error;

  PokemonPageLoadFailed({@required this.error});
}
