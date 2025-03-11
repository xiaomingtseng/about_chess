import 'package:flutter/material.dart';

class OpeningsScreen extends StatelessWidget {
  const OpeningsScreen({super.key});

  final List<Map<String, String>> openings = const [
    {
      "title": "義大利開局",
      "desc": "1.e4 e5 2.Nf3 Nc6 3.Bc4",
      "image": "assets/opening1.jpg",
    },
    {"title": "西西里防禦", "desc": "1.e4 c5", "image": "assets/opening2.jpg"},
    {"title": "法國防禦", "desc": "1.e4 e6", "image": "assets/opening3.jpg"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('西洋棋開局')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            for (var opening in openings)
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      opening["image"]!,
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
                            opening["title"]!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            opening["desc"]!,
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
