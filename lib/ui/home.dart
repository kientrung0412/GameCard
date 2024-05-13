import 'dart:async';

import 'package:card_game/ui/my_game.dart';
import 'package:flame/components.dart';
import 'package:flutter/material.dart';

class PlayArea extends RectangleComponent with HasGameReference<MyGame> {
  PlayArea()
      : super(
          paint: Paint()..color = const Color(0xfff2e8cf),
        );
  @override
  FutureOr<void> onLoad() async {
    super.onLoad();
    size = Vector2(20000, 20000);
  }
}
