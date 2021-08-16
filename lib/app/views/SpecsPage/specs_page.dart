import 'package:flutter/material.dart';

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
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: <Widget>[
            Hero(
              tag: 'apecs',
              child: Container(
                // color: Colors.red,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          'Pikachu',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF686565),
                              fontSize: size.width * 0.07),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
