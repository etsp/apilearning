class PlayerInfo {
  int pid;
  String profile;
  String imageURL;
  String battingStyle;
  String bowlingStyle;
  String majorTeams;
  String currentAge;
  String born;
  String fullName;
  String name;
  String country;
  String playingRole;
  String v;
  Data data;
  int ttl;
  Provider provider;
  int creditsLeft;

  PlayerInfo(
      {this.pid,
        this.profile,
        this.imageURL,
        this.battingStyle,
        this.bowlingStyle,
        this.majorTeams,
        this.currentAge,
        this.born,
        this.fullName,
        this.name,
        this.country,
        this.playingRole,
        this.v,
        this.data,
        this.ttl,
        this.provider,
        this.creditsLeft});

  PlayerInfo.fromJson(Map<String, dynamic> json) {
    pid = json['pid'];
    profile = json['profile'];
    imageURL = json['imageURL'];
    battingStyle = json['battingStyle'];
    bowlingStyle = json['bowlingStyle'];
    majorTeams = json['majorTeams'];
    currentAge = json['currentAge'];
    born = json['born'];
    fullName = json['fullName'];
    name = json['name'];
    country = json['country'];
    playingRole = json['playingRole'];
    v = json['v'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    ttl = json['ttl'];
    provider = json['provider'] != null
        ? new Provider.fromJson(json['provider'])
        : null;
    creditsLeft = json['creditsLeft'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['pid'] = this.pid;
    data['profile'] = this.profile;
    data['imageURL'] = this.imageURL;
    data['battingStyle'] = this.battingStyle;
    data['bowlingStyle'] = this.bowlingStyle;
    data['majorTeams'] = this.majorTeams;
    data['currentAge'] = this.currentAge;
    data['born'] = this.born;
    data['fullName'] = this.fullName;
    data['name'] = this.name;
    data['country'] = this.country;
    data['playingRole'] = this.playingRole;
    data['v'] = this.v;
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    data['ttl'] = this.ttl;
    if (this.provider != null) {
      data['provider'] = this.provider.toJson();
    }
    data['creditsLeft'] = this.creditsLeft;
    return data;
  }
}

class Data {
  Bowling bowling;
  Bowling batting;

  Data({this.bowling, this.batting});

  Data.fromJson(Map<String, dynamic> json) {
    bowling =
    json['bowling'] != null ? new Bowling.fromJson(json['bowling']) : null;
    batting =
    json['batting'] != null ? new Bowling.fromJson(json['batting']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.bowling != null) {
      data['bowling'] = this.bowling.toJson();
    }
    if (this.batting != null) {
      data['batting'] = this.batting.toJson();
    }
    return data;
  }
}

class Bowling {
  ListA listA;
  ListA firstClass;
  ListA t20Is;
  ListA oDIs;
  ListA tests;

  Bowling({this.listA, this.firstClass, this.t20Is, this.oDIs, this.tests});

  Bowling.fromJson(Map<String, dynamic> json) {
    listA = json['listA'] != null ? new ListA.fromJson(json['listA']) : null;
    firstClass = json['firstClass'] != null
        ? new ListA.fromJson(json['firstClass'])
        : null;
    t20Is = json['T20Is'] != null ? new ListA.fromJson(json['T20Is']) : null;
    oDIs = json['ODIs'] != null ? new ListA.fromJson(json['ODIs']) : null;
    tests = json['tests'] != null ? new ListA.fromJson(json['tests']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.listA != null) {
      data['listA'] = this.listA.toJson();
    }
    if (this.firstClass != null) {
      data['firstClass'] = this.firstClass.toJson();
    }
    if (this.t20Is != null) {
      data['T20Is'] = this.t20Is.toJson();
    }
    if (this.oDIs != null) {
      data['ODIs'] = this.oDIs.toJson();
    }
    if (this.tests != null) {
      data['tests'] = this.tests.toJson();
    }
    return data;
  }
}

class ListA {
  String s10;
  String s5w;
  String s4w;
  String sR;
  String econ;
  String ave;
  String bBM;
  String bBI;
  String wkts;
  String runs;
  String balls;
  String inns;
  String mat;

  ListA(
      {this.s10,
        this.s5w,
        this.s4w,
        this.sR,
        this.econ,
        this.ave,
        this.bBM,
        this.bBI,
        this.wkts,
        this.runs,
        this.balls,
        this.inns,
        this.mat});

  ListA.fromJson(Map<String, dynamic> json) {
    s10 = json['10'];
    s5w = json['5w'];
    s4w = json['4w'];
    sR = json['SR'];
    econ = json['Econ'];
    ave = json['Ave'];
    bBM = json['BBM'];
    bBI = json['BBI'];
    wkts = json['Wkts'];
    runs = json['Runs'];
    balls = json['Balls'];
    inns = json['Inns'];
    mat = json['Mat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['10'] = this.s10;
    data['5w'] = this.s5w;
    data['4w'] = this.s4w;
    data['SR'] = this.sR;
    data['Econ'] = this.econ;
    data['Ave'] = this.ave;
    data['BBM'] = this.bBM;
    data['BBI'] = this.bBI;
    data['Wkts'] = this.wkts;
    data['Runs'] = this.runs;
    data['Balls'] = this.balls;
    data['Inns'] = this.inns;
    data['Mat'] = this.mat;
    return data;
  }
}

class ListB {
  String s50;
  String s100;
  String st;
  String ct;
  String s6s;
  String s4s;
  String sR;
  String bF;
  String ave;
  String hS;
  String runs;
  String nO;
  String inns;
  String mat;

  ListB(
      {this.s50,
        this.s100,
        this.st,
        this.ct,
        this.s6s,
        this.s4s,
        this.sR,
        this.bF,
        this.ave,
        this.hS,
        this.runs,
        this.nO,
        this.inns,
        this.mat});

  ListB.fromJson(Map<String, dynamic> json) {
    s50 = json['50'];
    s100 = json['100'];
    st = json['St'];
    ct = json['Ct'];
    s6s = json['6s'];
    s4s = json['4s'];
    sR = json['SR'];
    bF = json['BF'];
    ave = json['Ave'];
    hS = json['HS'];
    runs = json['Runs'];
    nO = json['NO'];
    inns = json['Inns'];
    mat = json['Mat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['50'] = this.s50;
    data['100'] = this.s100;
    data['St'] = this.st;
    data['Ct'] = this.ct;
    data['6s'] = this.s6s;
    data['4s'] = this.s4s;
    data['SR'] = this.sR;
    data['BF'] = this.bF;
    data['Ave'] = this.ave;
    data['HS'] = this.hS;
    data['Runs'] = this.runs;
    data['NO'] = this.nO;
    data['Inns'] = this.inns;
    data['Mat'] = this.mat;
    return data;
  }
}

class Provider {
  String source;
  String url;
  String pubDate;

  Provider({this.source, this.url, this.pubDate});

  Provider.fromJson(Map<String, dynamic> json) {
    source = json['source'];
    url = json['url'];
    pubDate = json['pubDate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['source'] = this.source;
    data['url'] = this.url;
    data['pubDate'] = this.pubDate;
    return data;
  }
}