class Autogenerated {
  String _number;
  String _name;
  String _image;
  List<String> _type;
  String _height;
  String _weight;
  List<String> _weaknesses;
  List<NextEvolution> _nextEvolution;

  Autogenerated(
      {String number,
      String name,
      String image,
      List<String> type,
      String height,
      String weight,
      List<String> weaknesses,
      List<NextEvolution> nextEvolution}) {
    this._number = number;
    this._name = name;
    this._image = image;
    this._type = type;
    this._height = height;
    this._weight = weight;
    this._weaknesses = weaknesses;
    this._nextEvolution = nextEvolution;
  }

  String get number => _number;
  set number(String number) => _number = number;
  String get name => _name;
  set name(String name) => _name = name;
  String get image => _image;
  set image(String image) => _image = image;
  List<String> get type => _type;
  set type(List<String> type) => _type = type;
  String get height => _height;
  set height(String height) => _height = height;
  String get weight => _weight;
  set weight(String weight) => _weight = weight;
  List<String> get weaknesses => _weaknesses;
  set weaknesses(List<String> weaknesses) => _weaknesses = weaknesses;
  List<NextEvolution> get nextEvolution => _nextEvolution;
  set nextEvolution(List<NextEvolution> nextEvolution) =>
      _nextEvolution = nextEvolution;

  Autogenerated.fromJson(Map<String, dynamic> json) {
    _number = json['number'];
    _name = json['name'];
    _image = json['image'];
    _type = json['type'].cast<String>();
    _height = json['height'];
    _weight = json['weight'];
    _weaknesses = json['weaknesses'].cast<String>();
    if (json['next_evolution'] != null) {
      _nextEvolution = new List<NextEvolution>();
      json['next_evolution'].forEach((v) {
        _nextEvolution.add(new NextEvolution.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this._number;
    data['name'] = this._name;
    data['image'] = this._image;
    data['type'] = this._type;
    data['height'] = this._height;
    data['weight'] = this._weight;
    data['weaknesses'] = this._weaknesses;
    if (this._nextEvolution != null) {
      data['next_evolution'] =
          this._nextEvolution.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class NextEvolution {
  String _number;
  String _name;

  NextEvolution({String number, String name}) {
    this._number = number;
    this._name = name;
  }

  String get number => _number;
  set number(String number) => _number = number;
  String get name => _name;
  set name(String name) => _name = name;

  NextEvolution.fromJson(Map<String, dynamic> json) {
    _number = json['number'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this._number;
    data['name'] = this._name;
    return data;
  }
}

class Pokehub {
  String _number;
  String _name;
  String _image;
  List<String> _type;
  String _height;
  String _weight;
  List<String> _weaknesses;
  List<NextEvolution> _nextEvolution;

  Autogenerated(
      {String number,
      String name,
      String image,
      List<String> type,
      String height,
      String weight,
      List<String> weaknesses,
      List<NextEvolution> nextEvolution}) {
    this._number = number;
    this._name = name;
    this._image = image;
    this._type = type;
    this._height = height;
    this._weight = weight;
    this._weaknesses = weaknesses;
    this._nextEvolution = nextEvolution;
  }

  String get number => _number;
  set number(String number) => _number = number;
  String get name => _name;
  set name(String name) => _name = name;
  String get image => _image;
  set image(String image) => _image = image;
  List<String> get type => _type;
  set type(List<String> type) => _type = type;
  String get height => _height;
  set height(String height) => _height = height;
  String get weight => _weight;
  set weight(String weight) => _weight = weight;
  List<String> get weaknesses => _weaknesses;
  set weaknesses(List<String> weaknesses) => _weaknesses = weaknesses;
  List<NextEvolution> get nextEvolution => _nextEvolution;
  set nextEvolution(List<NextEvolution> nextEvolution) =>
      _nextEvolution = nextEvolution;

  Pokehub.fromJson(Map<String, dynamic> json) {
    _number = json['number'];
    _name = json['name'];
    _image = json['image'];
    _type = json['type'].cast<String>();
    _height = json['height'];
    _weight = json['weight'];
    _weaknesses = json['weaknesses'].cast<String>();
    if (json['next_evolution'] != null) {
      _nextEvolution = new List<NextEvolution>();
      json['next_evolution'].forEach((v) {
        _nextEvolution.add(new NextEvolution.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this._number;
    data['name'] = this._name;
    data['image'] = this._image;
    data['type'] = this._type;
    data['height'] = this._height;
    data['weight'] = this._weight;
    data['weaknesses'] = this._weaknesses;
    if (this._nextEvolution != null) {
      data['next_evolution'] =
          this._nextEvolution.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Evolution {
  String _number;
  String _name;

  NextEvolution({String number, String name}) {
    this._number = number;
    this._name = name;
  }

  String get number => _number;
  set number(String number) => _number = number;
  String get name => _name;
  set name(String name) => _name = name;

  Evolution.fromJson(Map<String, dynamic> json) {
    _number = json['number'];
    _name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['number'] = this._number;
    data['name'] = this._name;
    return data;
  }
}
