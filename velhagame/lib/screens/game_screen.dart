// lib/screens/game_screen.dart
import 'package:flutter/material.dart';
import 'package:velhagame/models/game_modal.dart';
import 'package:velhagame/widgets/game_bord.dart';
import 'package:velhagame/widgets/game_status.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({super.key});

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final TicTacToeGame _game = TicTacToeGame();

  void _handleTap(int row, int col) {
    setState(() {
      _game.makeMove(row, col);
    });
  }

  void _resetGame() {
    setState(() {
      _game.resetGame();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Jogo da Velha'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GameStatus(
              isGameOver: _game.isGameOver,
              winner: _game.winner,
              currentPlayer: _game.currentPlayer,
            ),
            const SizedBox(height: 20),
            GameBoard(board: _game.board, onCellTap: _handleTap),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _resetGame,
              child: const Text('Reiniciar Jogo'),
            ),
          ],
        ),
      ),
    );
  }
}
