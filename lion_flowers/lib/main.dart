import 'package:flutter/material.dart';
import 'package:lion_flowers/screens/splash_screen.dart';

void main() {
  runApp(const LionFlowersApp());
}

class LionFlowersApp extends StatelessWidget {
  const LionFlowersApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lion Flowers',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
