import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'package:flutter_shell/screens/home/index.dart';
import 'package:flutter_shell/screens/sprite/index.dart';

var homeHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new HomeScreen();
  },
);

var spriteHandler = new Handler(
  handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    print(123);
    return new SpriteScreen(id: params["id"][0]);
  },
);
