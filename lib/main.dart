import 'package:card_game/ui/my_game.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';

import 'model/desk/standard_desk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configRunning();

  runApp(
    GameWidget(
      game: MyGame(),
    ),
  );
}

void configRunning() {
  Flame.device
    ..fullScreen()
    ..setLandscape();
}
