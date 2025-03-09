import 'package:flutter/material.dart';
import '../models/chess_piece.dart';

class PiecesScreen extends StatelessWidget {
  PiecesScreen({super.key});

  final List<ChessPiece> pieces = [
    ChessPiece(
      name: "國王",
      image: Image.asset("lib/assets/pieces/alpha/wK.png"),
      description: "最重要的棋子",
    ),
    ChessPiece(
      name: "皇后",
      image: Image.asset("lib/assets/pieces/alpha/wQ.png"),
      description: "最強的棋子",
    ),
    ChessPiece(
      name: "主教",
      image: Image.asset("lib/assets/pieces/alpha/wB.png"),
      description: "只能走對角線",
    ),
    ChessPiece(
      name: "騎士",
      image: Image.asset("lib/assets/pieces/alpha/wN.png"),
      description: "L型跳躍移動",
    ),
    ChessPiece(
      name: "城堡",
      image: Image.asset("lib/assets/pieces/alpha/wR.png"),
      description: "直線移動",
    ),
    ChessPiece(
      name: "兵",
      image: Image.asset("lib/assets/pieces/alpha/wP.png"),
      description: "前進一步，升變能力",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('棋子介紹')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Table(
          border: TableBorder.all(),
          children: [
            TableRow(
              children: [_buildTableHeader("棋子"), _buildTableHeader("描述")],
            ),
            for (var piece in pieces)
              TableRow(
                children: [
                  _buildTableCell(piece.name, piece.image),
                  _buildTableCell(piece.description, null),
                ],
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildTableHeader(String text) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildTableCell(String text, Image? image) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (image != null) image,
          const SizedBox(width: 8),
          Text(text),
        ],
      ),
    );
  }
}
