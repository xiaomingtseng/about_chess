import 'package:about_chess/screens/openings_screen.dart';
import 'package:flutter/material.dart';
import 'history_screen.dart';
import 'pieces_screen.dart';
import 'rules_screen.dart';
import 'games_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('西洋棋介紹')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    './lib/assets/hikaru_meme.jpg',
                    height: 200,
                  ),
                ),
              ),
              const Text(
                'Chess is the best game ever!',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  _buildNavButton(
                    context,
                    '西洋棋歷史',
                    Icons.history,
                    const HistoryScreen(),
                  ),
                  _buildNavButton(
                    context,
                    '棋子介紹',
                    Icons.question_answer,
                    PiecesScreen(),
                  ),
                  _buildNavButton(
                    context,
                    '規則與術語',
                    Icons.rule,
                    const RulesScreen(),
                  ),
                  _buildNavButton(
                    context,
                    '認識開局',
                    Icons.sports_esports,
                    const OpeningsScreen(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildNavButton(
    BuildContext context,
    String title,
    IconData icon,
    Widget page,
  ) {
    return GestureDetector(
      onTap:
          () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => page),
          ),
      child: Container(
        width: 160,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.brown.shade200,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 4)],
        ),
        child: Column(
          children: [
            Icon(icon, size: 40, color: Colors.white),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
