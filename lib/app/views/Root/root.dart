import 'package:flutter/material.dart';
import 'package:pokelandia/app/views/SplashPage/splash_page.dart';

class RootApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Colors.white,
          accentColor: Color(0xff686565),
        ),
        home: SplashPage());
  }
}
