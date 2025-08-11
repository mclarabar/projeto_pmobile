class Propriedade {
  late String image;
  late String nome;
  late String tipoDeHost;
  late String datas;

  Propriedade({
    required this.image,
    required this.nome,
    required this.tipoDeHost,
    required this.datas,
  });

  Propriedade.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    nome = json['nome'];
    tipoDeHost = json['tipoDeHost'];
    datas = json['datas'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['image'] = this.image;
    data['nome'] = this.nome;
    data['tipoDeHost'] = this.tipoDeHost;
    data['datas'] = this.datas;
    return data;
  }
}