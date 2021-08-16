import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokelandia/app/models/pokemon_details_model.dart';
import 'package:pokelandia/app/views/PokemonPage/Bloc/PokemonDetails/Pokemon_details_cubit.dart';

class SpecsPage extends StatefulWidget {
  @override
  _SpecsPageState createState() => _SpecsPageState();
}

class _SpecsPageState extends State<SpecsPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                                          Icon(Icons.favorite,
                                              color: Color(0xFF686565),
                                              size: size.width * 0.08),
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
                              padding: const EdgeInsets.only(top: 15, left: 20),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    details.name,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF686565),
                                        fontSize: size.width * 0.07),
                                  ),
                                  Container(
                                    // color: Colors.red,
                                    width: size.width * 1,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          top: 20, bottom: 20),
                                      child: Text(
                                        details.description,
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Color(0xFF686565),
                                            fontSize: size.width * 0.04),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  Text(
                                    'ID: ${details.id}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF686565),
                                        fontSize: size.width * 0.04),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  Text(
                                    'Weight: ${details.weight}',
                                    style: TextStyle(
                                        color: Color(0xFF686565),
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.04),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.01,
                                  ),
                                  Text(
                                    ' Height: ${details.height}',
                                    style: TextStyle(
                                        color: Color(0xFF686565),
                                        fontWeight: FontWeight.bold,
                                        fontSize: size.width * 0.04),
                                  ),
                                  SizedBox(
                                    height: size.height * 0.03,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: details.types
                                        .map((type) => _pokemonTypeView(type))
                                        .toList(),
                                  ),
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

  Widget _pokemonTypeView(String type) {
    Color color;

    switch (type) {
      case 'normal':
        color = Color(0xFFbdbeb0);
        break;
      case 'poison':
        color = Color(0xFF995E98);
        break;
      case 'psychic':
        color = Color(0xFFE96EB0);
        break;
      case 'grass':
        color = Color(0xFF9CD363);
        break;
      case 'ground':
        color = Color(0xFFE3C969);
        break;
      case 'ice':
        color = Color(0xFFAFF4FD);
        break;
      case 'fire':
        color = Color(0xFFE7614D);
        break;
      case 'rock':
        color = Color(0xFFCBBD7C);
        break;
      case 'dragon':
        color = Color(0xFF8475F7);
        break;
      case 'water':
        color = Color(0xFF6DACF8);
        break;
      case 'bug':
        color = Color(0xFFC5D24A);
        break;
      case 'dark':
        color = Color(0xFF886958);
        break;
      case 'fighting':
        color = Color(0xFF9E5A4A);
        break;
      case 'ghost':
        color = Color(0xFF7774CF);
        break;
      case 'steel':
        color = Color(0xFFC3C3D9);
        break;
      case 'flying':
        color = Color(0xFF81A2F8);
        break;
      case 'normal':
        color = Color(0xFFF9E65E);
        break;
      case 'fairy':
        color = Color(0xFFEEB0FA);
        break;
      default:
        color = Colors.black;
        break;
    }

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Text(
          type.toUpperCase(),
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
