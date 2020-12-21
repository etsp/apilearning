class GeetaShloka {
  String word;
  String nagari;
  String description;
  String category;

  GeetaShloka({this.word, this.nagari, this.description, this.category});

  GeetaShloka.fromJson(Map<String, dynamic> json) {
    word = json['word'];
    nagari = json['nagari'];
    description = json['description'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['word'] = this.word;
    data['nagari'] = this.nagari;
    data['description'] = this.description;
    data['category'] = this.category;
    return data;
  }
}