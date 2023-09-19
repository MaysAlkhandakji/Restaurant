import 'package:flutter/material.dart';
import 'package:restuarant/pages/tips/tips.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:restuarant/pages/config.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return new SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new Tips(),
      title: new Text(
        'Welcome to our restaurant',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      image: new Image.network(
          'https://flutter.io/images/catalog-widget-placeholder.png'),
      backgroundColor: primeryColor,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
      onClick: () => print("restuarant"),
      loaderColor: Color(0xFFECDCC4),
    );
  }
}
