class Propriedade {
  late String text_titulo;
  late String text;

  Propriedade({
    required this.text_titulo,
    required this.text,

  });
  Propriedade.fromJson(Map<String, dynamic> json) {
    text_titulo = json['text_titulo'];
    text = json['text'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text_titulo'] = this.text_titulo;
    data['text'] = this.text;
    return data;
  }
}
