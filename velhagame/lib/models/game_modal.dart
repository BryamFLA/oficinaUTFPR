class TicTacToeGame {
  late List<List<String>> board;
  late String currentPlayer;
  late bool isGameOver;
  late String winner;

  TicTacToeGame() {
    resetGame();
  }

  void resetGame() {
    board = [
      ['', '', ''],
      ['', '', ''],
      ['', '', ''],
    ];
    currentPlayer = 'X';
    isGameOver = false;
    winner = '';
  }

  // Retorna true se a jogada for válida, false caso contrário.
  bool makeMove(int row, int col) {
    if (board[row][col].isEmpty && !isGameOver) {
      board[row][col] = currentPlayer;
      _checkWinner();
      if (!isGameOver) {
        currentPlayer = currentPlayer == 'X' ? 'O' : 'X';
      }
      return true;
    }
    return false;
  }

  void _checkWinner() {
    // Verificar linhas
    for (int i = 0; i < 3; i++) {
      if (board[i][0].isNotEmpty &&
          board[i][0] == board[i][1] &&
          board[i][1] == board[i][2]) {
        _endGame(board[i][0]);
        return;
      }
    }

    // Verificar colunas
    for (int i = 0; i < 3; i++) {
      if (board[0][i].isNotEmpty &&
          board[0][i] == board[1][i] &&
          board[1][i] == board[2][i]) {
        _endGame(board[0][i]);
        return;
      }
    }

    // Verificar diagonais
    if (board[0][0].isNotEmpty &&
        board[0][0] == board[1][1] &&
        board[1][1] == board[2][2]) {
      _endGame(board[0][0]);
      return;
    }
    if (board[0][2].isNotEmpty &&
        board[0][2] == board[1][1] &&
        board[1][1] == board[2][0]) {
      _endGame(board[0][2]);
      return;
    }

    // Verificar empate (Deu Velha)
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (board[i][j].isEmpty) {
          return;
        }
      }
      _endGame('');
    }
  }

  void _endGame(String winner) {
    isGameOver = true;
    this.winner = winner;
  }
}
