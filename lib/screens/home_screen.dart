import 'package:about_chess/screens/openings_screen.dart';
import 'package:flutter/material.dart';
import 'history_screen.dart';
import 'pieces_screen.dart';
import 'rules_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fixed Background Image
          Positioned.fill(
            child: Image.asset('assets/chessboard.jpg', fit: BoxFit.cover),
          ),

          // Overlay for better readability
          Positioned.fill(
            child: Container(color: Colors.black.withOpacity(0.5)),
          ),

          // Scrollable Content
          SingleChildScrollView(
            child: SafeArea(
              child: Column(
                children: [
                  const SizedBox(height: 20),

                  // Title
                  const Text(
                    '西洋棋介紹',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),

                  // Hikaru Meme Section
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        'assets/hikaru_meme.jpg',
                        height: 200,
                        width: 260,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const Text(
                    '“Takes, Takes, Takes” — Hikaru Nakamura',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Divider(color: Colors.white),

                  // Famous Person Section
                  _buildFamousPersonSection(),

                  const Divider(color: Colors.white),

                  // Navigation Buttons
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

                  const SizedBox(height: 50),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFamousPersonSection() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/a/aa/Carlsen_Magnus_%2830238051906%29.jpg',
              height: 150,
              width: 150,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            '"It is better to overestimate your prospects than underestimate them. '
            'Some people think that if their opponent plays a beautiful game, it\'s OK to lose. I don\'t."- Magnus Carlsen',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
        ],
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
          boxShadow: [const BoxShadow(color: Colors.black26, blurRadius: 4)],
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
