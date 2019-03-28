import 'package:flutter/material.dart';

class GenderCode {
  static Widget getText(int key) {
    print(12321321);
    print(key);
    switch (key) {
      case 0:
        return Row(children: [
          Text('♂1：', style: TextStyle(color: Color(0xFF888888))),
          Text('♀0', style: TextStyle(color: Color(0xFFFF0000)))
        ]);
      case 31:
        return Row(children: [
          Text('♂7：', style: TextStyle(color: Color(0xFF888888))),
          Text('♀1', style: TextStyle(color: Color(0xFFFF0000)))
        ]);
      case 63:
        return Row(children: [
          Text('♂3：', style: TextStyle(color: Color(0xFF888888))),
          Text('♀1', style: TextStyle(color: Color(0xFFFF0000)))
        ]);
      case 127:
        return Row(children: [
          Text('♂1：', style: TextStyle(color: Color(0xFF888888))),
          Text('♀1', style: TextStyle(color: Color(0xFFFF0000)))
        ]);
      case 191:
        return Row(children: [
          Text('♂1：', style: TextStyle(color: Color(0xFF888888))),
          Text('♀3', style: TextStyle(color: Color(0xFFFF0000)))
        ]);
      case 223:
        return Row(children: [
          Text('♂1：', style: TextStyle(color: Color(0xFF888888))),
          Text('♀7', style: TextStyle(color: Color(0xFFFF0000)))
        ]);
      case 254:
        return Row(children: [
          Text('♂0：', style: TextStyle(color: Color(0xFF888888))),
          Text('♀7', style: TextStyle(color: Color(0xFFFF0000)))
        ]);
      case 255:
        return Row(children: [
          Text('无性别', style: TextStyle(color: Color(0xFF888888))),
        ]);
      default:
        return Row(children: [
          Text('未', style: TextStyle(color: Color(0xFF888888))),
        ]);
    }
  }
}
