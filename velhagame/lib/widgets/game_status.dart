// lib/widgets/game_status.dart
import 'package:flutter/material.dart';

class GameStatus extends StatelessWidget {
  final bool isGameOver;
  final String winner;
  final String currentPlayer;

  const GameStatus({
    super.key,
    required this.isGameOver,
    required this.winner,
    required this.currentPlayer,
  });

  @override
  Widget build(BuildContext context) {
    String message;
    if (isGameOver) {
      message = winner.isNotEmpty ? 'O Vencedor é $winner!' : 'Deu Velha!';
    } else {
      message = 'É a vez do Jogador $currentPlayer';
    }
    return Text(
      message,
      style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
