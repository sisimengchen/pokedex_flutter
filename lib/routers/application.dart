import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter_shell/model/sprite.dart';

class Application {
  static Router router;
  static TabController controller;
  static Map<String, Sprite> sprites = Map<String, Sprite>();
}
