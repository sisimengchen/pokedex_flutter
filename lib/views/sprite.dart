import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'package:flutter_shell/routers/application.dart';
import 'package:flutter_shell/model/sprite.dart';
import 'package:flutter_shell/model/egggroup.dart';
import 'package:flutter_shell/model/gendercode.dart';

import 'package:flutter_shell/views/type.dart';

class SpriteView {
  // 渲染首页，搜索列表的item
  static Widget renderItem(BuildContext context, Sprite sprite) =>
      GestureDetector(
        onTap: () {
          Application.router.navigateTo(context, "/sprite/" + sprite.id,
              transition: TransitionType.inFromRight);
        },
        child: Container(
            decoration: const BoxDecoration(
              color: Color(0xFFFFFFFF),
              border: Border(
                bottom: BorderSide(width: 1.0, color: Color(0xFFE5E5E5)),
              ),
            ),
            child: Row(children: [
              Expanded(
                  child: Row(children: [
                Image.asset(sprite.asset),
                Container(
                    margin: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                    child: Text(sprite.showName,
                        style: TextStyle(color: Color(0xFF353535)))),
              ])),
              Row(
                  children:
                      sprite.type.map((item) => TypeView.render(item)).toList())
            ])),
      );

  // 渲染精灵标题
  static Widget renderTitle(BuildContext context, Sprite sprite) =>
      GestureDetector(
          onTap: () {
            print(sprite.id);
          },
          child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFFFFFFFF),
                border: Border(
                  bottom: BorderSide(width: 1.0, color: Color(0xFFE5E5E5)),
                ),
              ),
              margin: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
              padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
              child: Row(children: [
                Expanded(
                    child: Row(children: [
                  Image.asset(sprite.asset),
                  Container(
                      margin: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(sprite.showName,
                                style: TextStyle(color: Color(0xFF353535))),
                            Text("#" + sprite.id + sprite.species + '宝可梦',
                                style: TextStyle(color: Color(0xFF888888)))
                          ])),
                ])),
                Row(
                    children: sprite.type
                        .map((item) => TypeView.render(item))
                        .toList())
              ])));

  static Widget renderBaseInfo(BuildContext context, Sprite sprite) =>
      Container(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  border: Border(
                    bottom: BorderSide(width: 1.0, color: Color(0xFFE5E5E5)),
                  ),
                ),
                margin: const EdgeInsets.fromLTRB(0, 10.0, 0, 0),
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                child: Row(children: [
                  Text('世代', style: TextStyle(color: Color(0xFF353535))),
                  Text(sprite.generation.toString(),
                      style: TextStyle(color: Color(0xFF888888))),
                ])),
            Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  border: Border(
                    bottom: BorderSide(width: 1.0, color: Color(0xFFE5E5E5)),
                  ),
                ),
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                child: Row(children: [
                  Text('蛋组', style: TextStyle(color: Color(0xFF353535))),
                  Text(
                      sprite.eggGroup
                          .map((item) => EggGroup.getCname(item))
                          .toList()
                          .join(' '),
                      style: TextStyle(color: Color(0xFF888888))),
                ])),
            Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  border: Border(
                    bottom: BorderSide(width: 1.0, color: Color(0xFFE5E5E5)),
                  ),
                ),
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                child: Row(children: [
                  Text('性别比率', style: TextStyle(color: Color(0xFF353535))),
                  GenderCode.getText(sprite.gendercode)
                ])),
            Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  border: Border(
                    bottom: BorderSide(width: 1.0, color: Color(0xFFE5E5E5)),
                  ),
                ),
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                child: Row(children: [
                  Text('捕获度', style: TextStyle(color: Color(0xFF353535))),
                  Text(sprite.captureRate.toString(),
                      style: TextStyle(color: Color(0xFF888888))),
                ])),
            Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  border: Border(
                    bottom: BorderSide(width: 1.0, color: Color(0xFFE5E5E5)),
                  ),
                ),
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                child: Row(children: [
                  Text('基础点数', style: TextStyle(color: Color(0xFF353535))),
                  Text(sprite.getAddStatsText(),
                      style: TextStyle(color: Color(0xFF888888))),
                ])),
            LinearProgressIndicator(value: 0.4)
          ]));
}
