import 'package:flutter/material.dart';
import 'package:phuquocisland/src/navigator/bottom_bar.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    final heightScreen = MediaQuery.of(context).size.height;
    final widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: heightScreen,
        width: widthScreen,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
                child: Center(
              child: Text('Du lịch Phú Quốc',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontFamily: 'Pacifico',
                  )),
            )),
            Expanded(
                child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    width: widthScreen,
                    height: 50,
                    child: OutlineButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomBar()));
                      },

                      shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25.0)),
                        borderSide: BorderSide(color: Colors.white,width: 3),
                      child: Text('Bắt đầu',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: 'Pacifico',
                          )),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    alignment: Alignment.topLeft,
                    child: Text('Giới thiệu chung',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Pacifico',
                        )),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    alignment: Alignment.topLeft,
                    child: Text(
                        'Ứng dụng dựa trên trải nghiệm thực tế của nhiều người khi đến Phú Quốc. Nơi đây là một hòn đảo xinh đẹp và chứa đụng nhiều điều bí ẩn mà không phải ai cũng khám phá hết được',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: 'Pacifico',
                        )),
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
