import 'package:flutter/material.dart';

// 搭配自訂的資料型別
class ChessPiece {
  final String name;
  final Image image;
  final String description;

  const ChessPiece({
    required this.name,
    required this.image,
    required this.description,
  });
}
