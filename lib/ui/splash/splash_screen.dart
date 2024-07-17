import 'package:deeny_app/ui/home/home_screen.dart';
import 'package:deeny_app/ui/ui_utils.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = '/';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () {
        // This will be executed after duration
        Navigator.pushReplacementNamed(context, HomeScreen.routeName);
      },
    );

    return Scaffold(
      body: Image.asset(
        getImagePathByName(imageName: 'splash.jpg'),
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
    );
  }
}
