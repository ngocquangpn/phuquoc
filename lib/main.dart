import 'package:flutter/material.dart';
import 'package:phuquocisland/src/navigator/bottom_bar.dart';
import 'package:phuquocisland/src/screens/splash_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => SplashScreen(),
        '/bottom': (context) => BottomBar(),
      },
    );
  }
}
