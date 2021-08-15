import 'package:flutter/material.dart';

class SpecsPage extends StatefulWidget {
  @override
  _SpecsPageState createState() => _SpecsPageState();
}

class _SpecsPageState extends State<SpecsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
            tag: 'logo',
            child: Container(
              child: Image.asset('assets/logo.png'),
            )),
        Hero(
          tag: 'pokelandia',
          child: Text(
            'Pokelândia',
            style: TextStyle(
              fontSize: 50,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
      ],
    );
  }
}
