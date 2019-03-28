import 'package:flutter/material.dart';

import 'package:flutter_shell/routers/application.dart';
import 'package:flutter_shell/model/sprite.dart';
import 'package:flutter_shell/views/sprite.dart';
import 'package:flutter_shell/data/sprite_list.dart';

class HomeScreen extends StatelessWidget {
  final String title = '首页1';

  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: ListView.builder(
          physics: BouncingScrollPhysics(),
          // itemExtent: 20.0,
          itemCount: spriteList.length,
          itemBuilder: (context, int index) {
            Sprite sprite = Sprite.fromJson(spriteList[index]);
            Application.sprites[sprite.id + ''] = sprite;
            print(sprite.name);
            return SpriteView.renderItem(context, sprite);
          }),
    );
  }
}
