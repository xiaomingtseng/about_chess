import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const ChessApp());
}

class ChessApp extends StatelessWidget {
  const ChessApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '西洋棋介紹',
      theme: ThemeData(primarySwatch: Colors.brown),
      home: const HomeScreen(),
    );
  }
}
