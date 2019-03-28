import 'package:flutter/material.dart';
import 'package:flutter_shell/model/type.dart';

class TypeView {
  static Widget render(
    String ename,
  ) {
    return Container(
        child: new Text(Type.getCname(ename),
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 13.0)),
        width: 50.0,
        margin: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        decoration: BoxDecoration(
            color: Type.getColor(ename),
            borderRadius: BorderRadius.all(Radius.circular(40.0))));
  }
}
