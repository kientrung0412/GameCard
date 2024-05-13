import 'dart:async';

import 'package:flame/components.dart';

class TableBackground extends World {
  late SpriteComponent background;

  @override
  FutureOr<void> onLoad() async {
    final sprite = await Sprite.load('table/table_blue.png');
    background = SpriteComponent(
      sprite: sprite,
      size: Vector2.all(200),
    );
    add(background);
    return super.onLoad();
  }
}
