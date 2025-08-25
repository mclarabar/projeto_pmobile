import 'package:flutter/material.dart';
import 'package:zzc/respostas_dao.dart';

class TelaResultado extends StatelessWidget {
  final int usuarioId;

  const TelaResultado({super.key, required this.usuarioId});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[900],
        title: Text('Resultado do Quiz'),
      ),
      body: FutureBuilder(
        future: RespostasDao().obterRespostas(usuarioId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text('Erro ao carregar resultados'));
          }

          final respostas = snapshot.data ?? [];

          return ListView.builder(
            itemCount: respostas.length,
            itemBuilder: (context, index) {
              final resposta = respostas[index];
              return ListTile(
                title: Text('Questão ${resposta.questaoId}'),
                subtitle: Text('Resposta: Opção ${resposta.opcaoEscolhida}'),
              );
            },
          );
        },
      ),
    );
  }
}