import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokelandia/app/models/pokemon_details_model.dart';
import 'package:pokelandia/app/views/PokemonPage/Bloc/PokemonDetails/Pokemon_details_cubit.dart';
import 'package:pokelandia/app/views/commons/pokemon_type.dart';

class SpecsPage extends StatefulWidget {
  @override
  _SpecsPageState createState() => _SpecsPageState();
}

class _SpecsPageState extends State<SpecsPage> {
  bool _favoritDisable = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    PokemonType _pokemonType = PokemonType();
    return Scaffold(
        backgroundColor: Colors.white,
        body: BlocBuilder<PokemonDetailsCubit, PokemonDetails>(
            builder: (context, details) {
          return details != null
              ? Container(
                  height: size.height,
                  width: size.width,
                  child: Stack(
                    children: <Widget>[
                      Hero(
                        tag: 'apecs',
                        child: Container(
                          height: size.height * 0.45,
                          width: double.maxFinite,
                          child: Stack(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 40,
                                  left: 20,
                                  right: 20,
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Container(
                                      width: size.width * 1,
                                      height: size.height * 0.05,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: <Widget>[
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.pop(context);
                                            },
                                            child: Icon(Icons.arrow_back,
                                                color: Color(0xFF686565),
                                                size: size.width * 0.08),
                                          ),
                                          GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  _favoritDisable =
                                                      !_favoritDisable;
                                                });
                                              },
                                              child: _favoritDisable
                                                  ? Icon(Icons.favorite,
                                                      color: Color(0xFF686565),
                                                      size: size.width * 0.08)
                                                  : Icon(Icons.favorite_border,
                                                      color: Color(0xFF686565),
                                                      size: size.width * 0.08)),
                                        ],
                                      ),
                                    ),
                                    Image.network(details.imageUrl),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 0,
                        top: size.height * 0.40,
                        child: Hero(
                          tag: 'ability',
                          child: Container(
                            height: size.height * 0.60,
                            width: size.width,
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
                              padding: const EdgeInsets.only(
                                  top: 15, left: 20, right: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // Row(
                                  //   mainAxisAlignment:
                                  //       MainAxisAlignment.spaceBetween,
                                  //   children: [
                                  Text(
                                    details.name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF686565),
                                        fontSize: size.width * 0.07),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.03,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: details.types
                                        .map((type) =>
                                            _pokemonType.pokemonTypeView(type))
                                        .toList(),
                                  ),
                                  // ],
                                  // ),
                                  SizedBox(
                                    height: size.height * 0.03,
                                  ),
                                  Container(
                                    width: size.width * 1,
                                    alignment: Alignment.center,
                                    child: Text(
                                      details.description.replaceAll('\n', ' '),
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          color: Color(0xFF686565),
                                          fontWeight: FontWeight.w400,
                                          fontSize: size.width * 0.04),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.03,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: size.width * 0.18,
                                        height: size.height * 0.04,
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 1),
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Center(
                                          child: Text(
                                            'ID: ${details.id}',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF686565),
                                                fontSize: size.width * 0.04),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.01,
                                      ),
                                      Container(
                                        width: size.width * 0.3,
                                        height: size.height * 0.04,
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 1),
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Center(
                                          child: Text(
                                            'Weight: ${details.weight}',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF686565),
                                                fontSize: size.width * 0.04),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height * 0.01,
                                      ),
                                      Container(
                                        width: size.width * 0.3,
                                        height: size.height * 0.04,
                                        decoration: BoxDecoration(
                                            border: Border.all(width: 1),
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Center(
                                          child: Text(
                                            ' Height: ${details.height}',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFF686565),
                                                fontSize: size.width * 0.04),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: size.height * 0.03,
                                  ),
                                  // Row(
                                  //   mainAxisAlignment: MainAxisAlignment.start,
                                  //   children: details.types
                                  //       .map((type) =>
                                  //           _pokemonType.pokemonTypeView(type))
                                  //       .toList(),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              : Center(
                  child: CircularProgressIndicator(),
                );
        }));
  }
}
