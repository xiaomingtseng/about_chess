import 'package:flutter/material.dart';

class RulesScreen extends StatelessWidget {
  const RulesScreen({super.key});

  final List<Map<String, String>> rules = const [
    {"title": "將軍 (Check)", "desc": "當你的國王受到攻擊時，稱為『將軍』"},
    {"title": "將死 (Checkmate)", "desc": "當國王無法擺脫攻擊時，遊戲結束"},
    {"title": "和局 (Draw)", "desc": "如果沒有一方能獲勝，則為和局"},
    {"title": "王車易位 (Castling)", "desc": "國王和城堡可進行一次特殊交換"},
    {"title": "吃過路兵 (En Passant)", "desc": "特殊的兵吃子規則"},
    {"title": "升變 (Promotion)", "desc": "兵到達對方底線時可變成其他棋子"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('規則與術語')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            for (var rule in rules)
              Card(
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        rule["title"]!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(rule["desc"]!, style: const TextStyle(fontSize: 16)),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
