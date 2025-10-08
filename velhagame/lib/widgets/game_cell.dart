// lib/widgets/game_cell.dart
import 'package:flutter/material.dart';

class GameCell extends StatelessWidget {
  final String symbol;
  final VoidCallback onTap;

  const GameCell({super.key, required this.symbol, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, 
      child: Container(
        width: 50,
        height: 50,
        margin: EdgeInsets.all(10),
        color: Colors.red,
        child: Center(
          child: Text(
            symbol,
            style: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
