import 'package:flutter/material.dart';
import 'package:zzc/respostas_dao.dart';
import 'package:zzc/respostas.dart';
import 'package:zzc/tela_resultado.dart';

class Quiz extends StatefulWidget {
  final int questaoId;
  final int usuarioId;
  const Quiz({super.key, required this.questaoId, required this.usuarioId});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int? opcaoSelecionada;
  final RespostasDao _respostasDao = RespostasDao();

  // Mapeamento de questões e opções
  final Map<int, Map<String, dynamic>> _questoes = {
    1: {
      'pergunta': 'Como você classifica sua rotina de exercícios físicos?',
      'opcoes': [
        'Boa, pratico exercícios físicos regularmente',
        'Regular, às vezes pratico exercícios físicos',
        'Ruim, raramente pratico exercícios físicos',
        'Não pratico exercícios físicos'
      ]
    },
  };

  @override
  Widget build(BuildContext context) {
    final questaoAtual = _questoes[widget.questaoId];
    final bool isUltimaQuestao = widget.questaoId == _questoes.length;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.indigo[900],
            title: Text(
              'QUIZ DA ROTINA',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.account_circle_rounded),
                color: Colors.white,
              ),
            ],
          ),

          bottomNavigationBar: Stack(
            children: [
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 45,
                  color: Colors.indigo[900],
                ),
              ),
              ClipOval(
                child: Container(
                  height: 80,
                  width: 1000,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 14),
                        child: TextButton(
                          onPressed: _voltar,
                          child: Text(
                            '< Voltar',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                      Spacer(),
                      Padding(
                        padding: EdgeInsets.only(right: 14),
                        child: TextButton(
                          onPressed: opcaoSelecionada != null ? _proximaAcao : null,
                          child: Text(
                            isUltimaQuestao ? 'Finalizar' : 'Próxima >',
                            style: TextStyle(
                                color: opcaoSelecionada != null ? Colors.white : Colors.grey,
                                fontSize: 20
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.indigo[900],
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width, 80.0
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          backgroundColor: Colors.purple.shade200,

          body: Padding(
            padding: const EdgeInsets.all(15),
            child: Container(
              margin: EdgeInsets.all(16),
              color: Colors.white,
              child: ListView(
                children: [
                  Container(
                    margin: EdgeInsets.all(16),
                    color: Colors.purple.shade200,
                    child: Center(
                      child: Text(
                        'QUESTÃO ${widget.questaoId}',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.all(16),
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        questaoAtual!['pergunta'],
                        style: TextStyle(color: Colors.black, fontSize: 25),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),

                  ..._buildOpcoesResposta(questaoAtual['opcoes']),
                ],
              ),
            ),
          )
      ),
    );
  }

  List<Widget> _buildOpcoesResposta(List<String> opcoes) {
    return List.generate(opcoes.length, (index) {
      return Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: opcaoSelecionada == index + 1
              ? Colors.indigo[700]
              : Colors.purple.shade200,
          borderRadius: BorderRadius.circular(8),
        ),
        child: RadioListTile<int>(
          title: Text(
            opcoes[index],
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
          value: index + 1, // Valores: 1, 2, 3, 4
          groupValue: opcaoSelecionada,
          onChanged: (value) {
            setState(() {
              opcaoSelecionada = value;
            });
          },
          activeColor: Colors.white,
          fillColor: MaterialStateProperty.all(Colors.white),
        ),
      );
    });
  }

  Future<void> _salvarRespostaENavegar() async {
    if (opcaoSelecionada == null) return;

    try {

      final resposta = Resposta(
        usuarioId: widget.usuarioId,
        questaoId: widget.questaoId,
        opcaoEscolhida: opcaoSelecionada!,
      );

      await _respostasDao.salvarResposta(resposta);

      if (widget.questaoId < _questoes.length) {

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => Quiz(
              questaoId: widget.questaoId + 1,
              usuarioId: widget.usuarioId,
            ),
          ),
        );
      } else {

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => TelaResultado(usuarioId: widget.usuarioId),
          ),
        );
      }
    } catch (e) {
      print('Erro ao salvar resposta: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro ao salvar resposta')),
      );
    }
  }

  void _proximaAcao() {
    _salvarRespostaENavegar();
  }

  void _voltar() {
    if (widget.questaoId > 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Quiz(
            questaoId: widget.questaoId - 1,
            usuarioId: widget.usuarioId,
          ),
        ),
      );
    } else {
      Navigator.pop(context);
    }
  }
}