// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_weather/convexapp.dart';
import 'package:flutter_weather/currentweather.dart';
import 'package:flutter_weather/navnav.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home:AnimatedSplashScreen(
        backgroundColor: Colors.blue[300],
        splash:
        Container(
          height: double.infinity,
          width: double.infinity,
          child:
        Image.asset('assets/img/splash.png',scale: 0.8,
        )
      ), 
        nextScreen: NavView(),
        splashTransition: SplashTransition.rotationTransition,
      )


    );
  }
}
