// lib/widgets/game_board.dart
import 'package:flutter/material.dart';
import 'package:velhagame/widgets/game_cell.dart';

class GameBoard extends StatelessWidget {
  final List<List<String>> board;
  final Function(int, int) onCellTap;

  const GameBoard({super.key, required this.board, required this.onCellTap});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: 9,
      itemBuilder: (context, index) {
        final row = index ~/ 3;
        final col = index % 3;
        return GameCell(
          symbol: board[row][col],
          onTap: () => onCellTap(row, col),
        );
      },
    );
  }
}
