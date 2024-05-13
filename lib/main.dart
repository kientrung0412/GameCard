import 'package:card_game/ui/my_game.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configScreen();

  runApp(
    GameWidget(
      game: CardGame(),
    ),
  );
}

void configScreen() {
  Flame.device
    ..fullScreen()
    ..setLandscape();
}
