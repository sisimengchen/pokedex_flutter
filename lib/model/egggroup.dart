class EggGroup {
  static String getCname(String ename) {
    switch (ename) {
      case 'monster':
        return '怪兽';
      case 'water1':
        return '水中1';
      case 'bug':
        return '虫';
      case 'flying':
        return '飞行';
      case 'field':
        return '陆上';
      case 'fairy':
        return '妖精';
      case 'grass':
        return '植物';
      case 'human-like':
        return '人形';
      case 'water3':
        return '水中3';
      case 'mineral':
        return '矿物';
      case 'amorphous':
        return '不定形';
      case 'water2':
        return '水中2';
      case 'ditto':
        return '百变怪';
      case 'dragon':
        return '龙';
      case 'undiscovered':
        return '未发现蛋';
      default:
        return '未';
    }
  }
}
