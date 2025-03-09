import 'package:flutter/material.dart';

class GamesScreen extends StatelessWidget {
  const GamesScreen({super.key});

  final List<Map<String, String>> classicGames = const [
    {
      "title": "不朽棋局 (1851)",
      "desc": "安道爾森 vs. 凡韓恩",
      "image": "assets/game1.jpg",
    },
    {
      "title": "千古名局 (1852)",
      "desc": "安道爾森 vs. 杜弗雷",
      "image": "assets/game2.jpg",
    },
    {
      "title": "卡斯帕羅夫 vs. 托帕洛夫 (1999)",
      "desc": "精彩戰術組合",
      "image": "assets/game3.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('經典棋局')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            for (var game in classicGames)
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      game["image"]!,
                      height: 200,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.black.withOpacity(0.6),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            game["title"]!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            game["desc"]!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
