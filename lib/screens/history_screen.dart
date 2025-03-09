import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('西洋棋歷史')),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  'https://images.chesscomfiles.com/uploads/v1/images_users/tiny_mce/NathanielGreen/phpUa3LNV.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "西洋棋的歷史",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const Divider(),
              const Text(
                "西洋棋起源於印度的『恰圖蘭卡（Chaturanga）』，大約在公元6世紀時發展成一種戰略遊戲，後來傳入波斯，被稱為『Shatranj』。"
                "\n\n在9世紀，西洋棋經由阿拉伯人傳入伊斯蘭世界，後來進入歐洲。在15世紀，歐洲人修改了規則，使遊戲更加快速，其中最重要的變化是皇后的強化，使現代西洋棋誕生。"
                "\n\n19世紀，西洋棋正式確立比賽制度，1886年舉辦了第一屆世界冠軍賽，由威廉·斯坦尼茨（Wilhelm Steinitz）奪冠。"
                "\n\n到了20世紀，西洋棋的戰術發展更加成熟，蘇聯在1950年代成為棋藝強國，誕生了許多世界冠軍，如米哈伊爾·塔爾、鮑里斯·斯帕斯基和卡斯帕羅夫。"
                "\n\n現代西洋棋受到AI與電腦的影響，1997年，IBM 的『深藍（Deep Blue）』戰勝卡斯帕羅夫，標誌著AI時代的來臨。",
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 16),
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.brown.shade300, Colors.brown.shade700],
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  "西洋棋已成為世界上最受歡迎的棋類之一，擁有數百萬玩家，並且仍在不斷演進。",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
