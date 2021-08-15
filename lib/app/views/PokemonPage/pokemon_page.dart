import 'package:flutter/material.dart';
import 'package:pokelandia/app/views/commons/appBar_commons.dart';

class PokemonPage extends StatefulWidget {
  @override
  _PokemonPageState createState() => _PokemonPageState();
}

class _PokemonPageState extends State<PokemonPage> {
  AppBarCommons appBarCommons = AppBarCommons();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Container(),
        actions: <Widget>[
          Container(
            width: size.width * 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.list,
                    color: Color(0xFF686565), size: size.width * 0.08),
                Hero(
                  tag: 'pokelandia',
                  child: Text(
                    'Pokelândia',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF686565),
                        fontSize: size.width * 0.05),
                  ),
                ),
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('assets/logo.png'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
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
                  SizedBox(
                    height: size.height * 0.03,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: size.width * 0.43,
                            height: size.height * 0.15,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                    topRight:
                                        Radius.circular(size.width * 0.04),
                                    topLeft: Radius.circular(size.width * 0.04),
                                    bottomLeft:
                                        Radius.circular(size.width * 0.08),
                                    bottomRight:
                                        Radius.circular(size.width * 0.08)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color(0xff686565),
                                    spreadRadius: 0.01,
                                    blurRadius: 4,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                                image: DecorationImage(
                                  image: AssetImage("assets/logo.png"),
                                  fit: BoxFit.cover,
                                )),
                          ),
                          Container(
                            width: size.width * 0.32,
                            height: size.height * 0.08,
                            decoration: BoxDecoration(
                              color: Color(0xffFAF4F4),
                              borderRadius: BorderRadius.only(
                                  bottomLeft:
                                      Radius.circular(size.width * 0.03),
                                  bottomRight:
                                      Radius.circular(size.width * 0.03)),
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
                                    'Pikachu',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Color(0xFF686565),
                                        fontSize: size.width * 0.04),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Container(
                                          width: size.width * 0.14,
                                          height: size.height * 0.035,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      size.width * 1),
                                              border: Border.all(
                                                  color: Color(0xFF686565))),
                                          child: Center(
                                            child: Text(
                                              'ability',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF686565),
                                                  fontSize: size.width * 0.03),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: size.width * 0.14,
                                          height: size.height * 0.035,
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      size.width * 1),
                                              border: Border.all(
                                                  color: Color(0xFF686565))),
                                          child: Center(
                                            child: Text(
                                              'ability',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF686565),
                                                  fontSize: size.width * 0.03),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
