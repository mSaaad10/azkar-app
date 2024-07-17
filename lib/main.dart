import 'package:deeny_app/ui/home/home_screen.dart';
import 'package:deeny_app/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DenyApp());
}

class DenyApp extends StatelessWidget {
  const DenyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.routeName: (_) => const SplashScreen(),
        HomeScreen.routeName: (_) => const HomeScreen(),
      },
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.transparent,
              elevation: 0,
              centerTitle: true,
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontSize: 30)),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue)),
    );
  }
}
