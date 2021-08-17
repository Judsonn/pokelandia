import 'package:flutter/material.dart';
import 'package:pokelandia/app/views/commons/drawer_commons.dart';

class AppBarCommons extends StatelessWidget {
  const AppBarCommons({this.iconData});

  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: Container(),
      actions: <Widget>[
        Container(
          width: size.width * 1,
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DrawerCommons()));
                  },
                  child: Icon(iconData),
                ),
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
        ),
      ],
    );
  }
}
