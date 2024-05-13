import 'dart:async';

import 'package:flame/camera.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:flutter/widgets.dart';

import 'home.dart';
import 'main_background.dart';

class MyGame extends FlameGame {

  MyGame() : super();

  double get width => size.x;

  double get height => size.y;

  @override
  FutureOr<void> onLoad() async {
    super.onLoad();
    camera.backdrop = MainBackground();
    camera.viewfinder.anchor = Anchor.topLeft;
    world.add(PlayArea());
  }
}
