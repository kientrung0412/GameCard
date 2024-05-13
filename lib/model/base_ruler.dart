import 'dart:math';

abstract class BaseRuler {
  abstract List<int> cards;

  abstract List<int> player;

  int numberCard() {
    return cards.length;
  }

  int numberPlayer() {
    return player.length;
  }

  int numberCardFirstDraw();

  bool canDraw();

  int numberCardDraw();

  void shuffleDesk() {
    cards.shuffle(Random());
  }
}
