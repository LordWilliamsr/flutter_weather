import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather/screens/loading_screen.dart';
import 'package:weather/screens/location_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/loadingscreen': (context) => const LocationScreen(),
      },
      theme: ThemeData.dark(),
      home: const LoadingScreen(),
    );
  }
}
