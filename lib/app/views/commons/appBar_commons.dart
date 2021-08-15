import 'package:flutter/material.dart';

class AppBarCommons extends StatefulWidget {
  @override
  _AppBarCommonsState createState() => _AppBarCommonsState();
}

class _AppBarCommonsState extends State<AppBarCommons> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    AppBar(
      elevation: 1,
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
    );
  }
}
