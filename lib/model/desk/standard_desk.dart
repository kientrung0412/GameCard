import 'package:card_game/model/card/card.dart';
import 'package:card_game/model/card/standard_card.dart';
import 'package:card_game/model/desk/desk.dart';

class StandardDesk extends Desk {
  static const size = 52;

  @override
  late List<Card> listCard;

  StandardDesk() {
    listCard = generateDesk();
    setCurrentCard();
  }

  @override
  List<StandardCard> generateDesk() => List.generate(
        size,
        (index) => StandardCard(index),
      ).toList();
}
