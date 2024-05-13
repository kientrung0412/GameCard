import 'package:card_game/model/card/card.dart';

class StandardCard extends Card {
  @override
  int id;

  @override
  late String front;

  @override
  String get back => "assets/desk/standard/card/back.png";

  StandardCard(this.id) {
    front = "assets/desk/standard/card/$id.png";
  }
}
