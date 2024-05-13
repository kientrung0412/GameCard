import 'dart:collection';
import 'dart:math';

import 'package:card_game/model/card/card.dart';

abstract class Desk {
  abstract final List<Card> listCard;
  final Queue<Card> _currentListCard = Queue();

  List<Card> generateDesk();

  void shuffle() {
    var newList = _currentListCard.toList();
    newList.shuffle(Random());
    _currentListCard
      ..clear()
      ..addAll(newList);
  }

  void setCurrentCard() {
    _currentListCard
      ..clear()
      ..addAll(listCard);
  }

  Card drawTop({int numberCardDraw = 1}) {
    return _currentListCard.removeFirst();
  }

// List<Card> drawExactly({required Card card}) {
//   return _currentListCard.firstOrNull
// }
}
