class Artigo{
  late String metodo;
  late String diario;
  late String volume;
  late String pagina;
  late String autores;

  Artigo({
    required this.metodo,
    required this.diario,
    required this.volume,
    required this.pagina,
    required this.autores,
  });
  String get completeArtigos => '$volume, $autores';

  Artigo.fromJson(Map<String, dynamic> json){
    metodo = json['metodo'] ?? '';
    diario = json['diario'] ?? '';
    volume = json['volume'] ?? '';
    pagina = json['pagina'] ?? '';
    autores = json['autores'] ?? '';
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['metodo'] = this.metodo;
    data['diario'] = this.diario;
    data['volume'] = this.volume;
    data['pagina'] = this.pagina;
    data['autores'] = this.autores;
    return data;
  }
}