import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokelandia/app/views/PokemonPage/Bloc/PokemonDetails/Pokemon_details_cubit.dart';
import 'package:pokelandia/app/views/PokemonPage/Bloc/PokemonDetails/details_pokemon.dart';
import 'package:pokelandia/app/views/PokemonPage/Bloc/pokemon_page_bloc.dart';
import 'package:pokelandia/app/views/PokemonPage/Bloc/pokemon_page_event.dart';

import 'package:pokelandia/app/views/SplashPage/splash_page.dart';

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pokemonDetailsCubit = PokemonDetailsCubit();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                PokemonBloc()..add(PokemonPageRequest(page: 0))),
        BlocProvider(
            create: (context) =>
                PokemonCubit(pokemonDetailsCubit: pokemonDetailsCubit)),
        BlocProvider(create: (context) => pokemonDetailsCubit)
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primaryColor: Colors.white,
            accentColor: Color(0xff686565),
          ),
          home: AppNavigator()),
    );
  }
}
