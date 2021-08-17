import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokelandia/app/models/pokemon_details_model.dart';
import 'package:pokelandia/app/views/PokemonPage/Bloc/PokemonDetails/Pokemon_details_cubit.dart';
import 'package:pokelandia/app/views/PokemonPage/Bloc/PokemonDetails/details_pokemon.dart';
import 'package:pokelandia/app/views/PokemonPage/Bloc/pokemon_page_bloc.dart';
import 'package:pokelandia/app/views/PokemonPage/Bloc/pokemon_page_state.dart';
import 'package:pokelandia/app/views/commons/appBar_commons.dart';
import 'package:pokelandia/app/views/commons/drawer_commons.dart';

class PokemonPage extends StatefulWidget {
  @override
  _PokemonPageState createState() => _PokemonPageState();
}

class _PokemonPageState extends State<PokemonPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: DrawerCommons(),
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(100),
          child: AppBarCommons(
            iconData: Icons.list,
          )),
      backgroundColor: Colors.white,
      body: BlocBuilder<PokemonBloc, PokemonState>(builder: (context, state) {
        if (state is PokemonLoadInProgress) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is PokemonPageLoadSuccess) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Container(
                width: size.width * 1,
                height: size.height * 1,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(size.width * 0.1),
                        topLeft: Radius.circular(size.width * 0.1)),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff686565),
                        spreadRadius: 0.01,
                        blurRadius: 4,
                        offset: Offset(0, 0),
                      ),
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Column(
                    children: <Widget>[
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          'Pokedex',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF686565),
                              fontSize: size.width * 0.05),
                        ),
                      ),
                      Expanded(
                        child: GridView.builder(
                            padding: EdgeInsets.only(top: 10),
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2),
                            itemCount: state.pokemonListings.length,
                            itemBuilder: (context, index) {
                              return Column(
                                children: [
                                  Hero(
                                    tag: 'specs',
                                    child: GestureDetector(
                                      onTap: () {
                                        BlocProvider.of<PokemonCubit>(context)
                                            .showPokemonDetails(state
                                                .pokemonListings[index].id);
                                      },
                                      child: Container(
                                          width: size.width * 0.42,
                                          height: size.height * 0.12,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color(0xff686565),
                                                spreadRadius: 0.01,
                                                blurRadius: 4,
                                                offset: Offset(0, 0),
                                              ),
                                            ],
                                          ),
                                          child: Image.network(
                                            state.pokemonListings[index]
                                                .imageUrl,
                                          )),
                                    ),
                                  ),
                                  Hero(
                                    tag: 'ability',
                                    child: Container(
                                      width: size.width * 0.32,
                                      height: size.height * 0.05,
                                      decoration: BoxDecoration(
                                        color: Color(0xffFAF4F4),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(
                                                size.width * 0.01),
                                            topRight: Radius.circular(
                                                size.width * 0.01),
                                            bottomLeft: Radius.circular(
                                                size.width * 0.05),
                                            bottomRight: Radius.circular(
                                                size.width * 0.05)),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Color(0xff686565),
                                            spreadRadius: 0.01,
                                            blurRadius: 4,
                                            offset: Offset(0, 1),
                                          ),
                                        ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 5),
                                        child: Column(
                                          children: [
                                            Text(
                                              state.pokemonListings[index].name,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF686565),
                                                  fontSize: size.width * 0.043),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        } else if (state is PokemonPageLoadFailed) {
          return Center(
            child: Text(state.error.toString()),
          );
        } else {
          return Container();
        }
      }),
    );
  }
}
