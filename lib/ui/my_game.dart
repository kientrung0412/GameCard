import 'dart:async';

import 'package:card_game/ui/world/table.dart';
import 'package:flame/camera.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';

class CardGame extends FlameGame {
  final table = TableBackground();
  late final CameraComponent cam;

  @override
  Future<void> onLoad() async {
    // cam = CameraComponent.withFixedResolution(
    //   width: size[0],
    //   height: size[1],
    //   world: table,
    // );
    var background = await spriteBackground();
    add(background);
  }

  Future<SpriteComponent> spriteBackground() async {
    final width = size[0];
    final height = size[1];
    return SpriteComponent()
      ..sprite = await loadSprite('table/table_blue.png')
      ..size = Vector2(width, height);
  }
}
