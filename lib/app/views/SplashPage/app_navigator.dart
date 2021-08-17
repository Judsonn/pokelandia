import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokelandia/app/views/PokemonPage/Bloc/PokemonDetails/details_pokemon.dart';
import 'package:pokelandia/app/views/SpecsPage/specs_page.dart';
import 'package:pokelandia/app/views/SplashPage/splash_page.dart';

class AppNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PokemonCubit, int>(builder: (context, pokemonId) {
      return Navigator(
        pages: [
          MaterialPage(child: SplashPage()),
          if (pokemonId != null) MaterialPage(child: SpecsPage())
        ],
        onPopPage: (route, result) {
          BlocProvider.of<PokemonCubit>(context).popToPokedex();
          return route.didPop(result);
        },
      );
    });
  }
}
