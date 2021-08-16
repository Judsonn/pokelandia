import 'package:flutter/material.dart';

class DrawerCommons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(actions: <Widget>[
        Container(
          width: size.width * 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Hero(
                  tag: 'logo',
                  child: Container(
                    child: Image.asset('assets/logo.png'),
                  ),
                ),
                Hero(
                  tag: 'pokelandia',
                  child: Text(
                    'Menu',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF686565),
                        fontSize: size.width * 0.05),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.close),
                ),
              ],
            ),
          ),
        ),
      ]),
      body: Container(
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.only(top: 40),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(Icons.favorite,
                      color: Color(0xFF686565), size: size.width * 0.06),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Text(
                    'Favorite Pokemon',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF686565),
                        fontSize: size.width * 0.05),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
