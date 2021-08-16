import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokelandia/app/views/PokemonPage/Bloc/PokemonDetails/details_pokemon.dart';
import 'package:pokelandia/app/views/PokemonPage/pokemon_page.dart';
import 'package:pokelandia/app/views/SpecsPage/specs_page.dart';

class AppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonCubit, int>(builder: (context, pokemonId) {
      return Navigator(
        pages: [
          MaterialPage(child: PokemonPage()),
          if (pokemonId != null) MaterialPage(child: PokemonDetailsView())
        ],
        onPopPage: (route, result) {
          BlocProvider.of<PokemonCubit>(context).popToPokedex();
          return route.didPop(result);
        },
      );
    });
  }
}
