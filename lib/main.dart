import 'package:flutter/material.dart';
import 'package:rekos/pages/home.dart';
import 'pages/splash.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(fontFamily: 'Poppins'),
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (context) => const SplashPage(),
      '/home': (context) => const HomePage(),
    },
  ));
}
