// lib/widgets/game_board.dart
import 'package:flutter/material.dart';
import 'package:velhagame/widgets/game_cell.dart';

class GameBoard extends StatelessWidget {
  final List<List<String>> board;
  final Function(int, int) onCellTap;

  const GameBoard({super.key, required this.board, required this.onCellTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GameCell(symbol: board[0][0], onTap: () => onCellTap(0, 0)),
            GameCell(symbol: board[0][1], onTap: () => onCellTap(0, 1)),
            GameCell(symbol: board[0][2], onTap: () => onCellTap(0, 2)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GameCell(symbol: board[1][0], onTap: () => onCellTap(1, 0)),
            GameCell(symbol: board[1][1], onTap: () => onCellTap(1, 1)),
            GameCell(symbol: board[1][2], onTap: () => onCellTap(1, 2)),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GameCell(symbol: board[2][0], onTap: () => onCellTap(2, 0)),
            GameCell(symbol: board[2][1], onTap: () => onCellTap(2, 1)),
            GameCell(symbol: board[2][2], onTap: () => onCellTap(2, 2)),
          ],
        ),
      ],
    );
  }
}
