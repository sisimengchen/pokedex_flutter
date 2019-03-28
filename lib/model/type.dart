import 'package:flutter/material.dart';

class Type {
  static String getCname(String ename) {
    switch (ename) {
      case 'normal':
        return '一般';
      case 'fighting':
        return '格斗';
      case 'flying':
        return '飞行';
      case 'poison':
        return '毒';
      case 'ground':
        return '地面';
      case 'rock':
        return '岩石';
      case 'bug':
        return '虫';
      case 'ghost':
        return '幽灵';
      case 'steel':
        return '钢';
      case 'fire':
        return '火';
      case 'water':
        return '水';
      case 'grass':
        return '草';
      case 'electric':
        return '电';
      case 'psychic':
        return '超能力';
      case 'ice':
        return '冰';
      case 'dragon':
        return '龙';
      case 'dark':
        return '恶';
      case 'fairy':
        return '妖精';
      default:
        return '未';
    }
  }

  static String getEname(String cname) {
    switch (cname) {
      case '一般':
        return 'normal';
      case '格斗':
        return 'fighting';
      case '飞行':
        return 'flying';
      case '毒':
        return 'poison';
      case '地面':
        return 'ground';
      case '岩石':
        return 'rock';
      case '虫':
        return 'bug';
      case '幽灵':
        return 'ghost';
      case '钢':
        return 'steel';
      case '火':
        return 'fire';
      case '水':
        return 'water';
      case '草':
        return 'grass';
      case '电':
        return 'electric';
      case '超能力':
        return 'psychic';
      case '冰':
        return 'ice';
      case '龙':
        return 'dragon';
      case '恶':
        return 'dark';
      case '妖精':
        return 'fairy';
      default:
        return 'undefined';
    }
  }

  static Color getColor(String ename) {
    switch (ename) {
      case 'normal':
        return const Color(0xFFBBBBA9);
      case 'fighting':
        return const Color(0xFFBE5440);
      case 'flying':
        return const Color(0xFF6595FF);
      case 'poison':
        return const Color(0xFFAD519A);
      case 'ground':
        return const Color(0xFFDEBD4B);
      case 'rock':
        return const Color(0xFFBBAB61);
      case 'bug':
        return const Color(0xFFA8BD00);
      case 'ghost':
        return const Color(0xFF6762BE);
      case 'steel':
        return const Color(0xFFAAAABC);
      case 'fire':
        return const Color(0xFFFF400B);
      case 'water':
        return const Color(0xFF2D95FF);
      case 'grass':
        return const Color(0xFF6FCF4D);
      case 'electric':
        return const Color(0xFFFFCE0F);
      case 'psychic':
        return const Color(0xFFFF5099);
      case 'ice':
        return const Color(0xFF70DDFF);
      case 'dragon':
        return const Color(0xFF7A5EF2);
      case 'dark':
        return const Color(0xFF785543);
      case 'fairy':
        return const Color(0xFFFFA6FF);
      default:
        return const Color(0xFFFFFFFF);
    }
  }

  static Widget renderType(String ename) {
    return Container(
        child: new Text(getCname(ename),
            textAlign: TextAlign.center,
            style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 13.0)),
        width: 50.0,
        margin: const EdgeInsets.fromLTRB(10.0, 0, 0, 0),
        padding: const EdgeInsets.symmetric(vertical: 4.0),
        decoration: BoxDecoration(
            color: getColor(ename),
            borderRadius: BorderRadius.all(Radius.circular(4.0))));
  }
}
