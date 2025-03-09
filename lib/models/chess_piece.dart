import 'package:flutter/material.dart';

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
