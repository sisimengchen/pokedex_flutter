class Sprite {
  // 索引
  int index;
  // 精灵id
  String id;
  // 精灵图片资源
  String get asset => 'assets/images/sprites/' + id + '.png';
  // 精灵英文名
  String name;
  // 精灵英文名
  String form;
  // 显示全称
  String get showName => '$cname$form';
  // 精灵中文名
  String cname;
  // 精灵种族
  String species;
  // 精灵世代
  int generation;
  // 精灵性别code
  int gendercode;
  // 精灵捕获几率
  int captureRate;
  // 基础能力
  Map<String, int> baseStats;
  // 基础能力总和
  int get totalStats =>
      baseStats['HP'] +
      baseStats['ATK'] +
      baseStats['DEF'] +
      baseStats['SPA'] +
      baseStats['SPE'];
  // 附加能力
  Map<String, int> addStats;
  // 精灵类型
  List<dynamic> type;
  // 精灵类型（中文）
  List<dynamic> ctype;
  // 特征
  List<dynamic> ability;
  // 蛋组
  List<dynamic> eggGroup;
  // 区域
  List<dynamic> area;
  // 进化
  List<dynamic> evolutions;

  static Map<String, String> addStatsMap = {
    "HP": "HP",
    "ATK": "攻击",
    "DEF": "防御",
    "SPA": "特攻",
    "SPD": "特防",
    "SPE": "速度"
  };

  Sprite.fromJson(Map<String, dynamic> json)
      : index = json['index'],
        id = json['id'],
        name = json['name'],
        cname = json['cname'],
        form = json['form'] == null ? '' : json['form'],
        species = json['species'],
        generation = json['generation'],
        gendercode = json['gendercode'],
        captureRate = json['captureRate'],
        baseStats = json['baseStats'],
        addStats = json['addStats'],
        type = json['type'],
        ctype = json['ctype'],
        ability = json['ability'],
        eggGroup = json['eggGroup'],
        area = json['area'],
        evolutions = json['evolutions'] {
    // ss
  }

  String getAddStatsText() {
    String text = "";
    addStats.forEach((k, v) => {
          text = text +
              (v > 0 ? Sprite.addStatsMap[k] + '+' + v.toString() + ' ' : '')
        });
    return text;
  }
}
