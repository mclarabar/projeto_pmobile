class Resposta {
  final int? id;
  final int usuarioId;
  final int questaoId;
  final int opcaoEscolhida;


  Resposta({
    this.id,
    required this.usuarioId,
    required this.questaoId,
    required this.opcaoEscolhida,
  });


  factory Resposta.fromJson(Map<String, dynamic> json){
    return Resposta(id: json['id'], usuarioId: json['usuario_id'], questaoId: json['questao_id'], opcaoEscolhida: json['opcao_escolhida']);
  }


  Map<String, dynamic> toJson(){
    return{
      'id': id,
      'usuario_id': usuarioId,
      'questao_id': questaoId,
      'opcao_escolhida': opcaoEscolhida,
    };
  }
}