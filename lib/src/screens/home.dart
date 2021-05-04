import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;
    final widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
      height: heightScreen,
        width:widthScreen,
        child: InteractiveViewer(
          minScale: 0.2,
          maxScale: 4.5,
          child: Image.asset("assets/images/map.jpg",width:widthScreen,height: heightScreen ,fit: BoxFit.fill,),
        ),
      ),
    );
  }
}
