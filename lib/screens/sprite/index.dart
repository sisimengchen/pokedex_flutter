import 'package:flutter/material.dart';

import 'package:flutter_shell/routers/application.dart';
import 'package:flutter_shell/model/sprite.dart';
import 'package:flutter_shell/views/sprite.dart';

class SpriteScreen extends StatelessWidget {
  final String id;

  Sprite sprite;

  SpriteScreen({Key key, this.id}) : super(key: key) {
    sprite = Application.sprites[id + ''];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(sprite.showName),
        ),
        backgroundColor: Color(0xFFEFEFF4),
        body: Column(children: [
          SpriteView.renderTitle(context, sprite),
          SpriteView.renderBaseInfo(context, sprite)
        ]));
  }
}

// SpriteView.renderTitle(context, sprite)
