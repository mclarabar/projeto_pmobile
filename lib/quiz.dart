import 'package:flutter/material.dart';


class Quiz extends StatefulWidget {
  final int questaoId;
  final int usuarioId;
  const Quiz({super.key, required this.questaoId, required this.usuarioId});


  @override
  State<Quiz> createState() => _HomePageState();
}




class _HomePageState extends State<Quiz> {
  int? opcaoSelecionada;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(


          appBar: AppBar(
            backgroundColor: Colors.indigo[900],
            title: Text(
              'QUIZ DA ROTINA',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.account_circle_rounded), color: Colors.white,),
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
                      Padding(padding: EdgeInsets.only(left: 14),
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            '< Voltar',
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    color: Colors.indigo[900],
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                            MediaQuery.of(context).size.width, 80.0)),
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
                        'Como você classifica sua rotina de exercícios físicos?',
                        style: TextStyle(color: Colors.black, fontSize: 25),
                      ),
                    ),
                  ),


                  Container(
                    margin: EdgeInsets.all(16),
                    color: Colors.purple.shade200,
                    child: Center(
                      child: TextButton(
                        onPressed: () { },
                        child: Text(
                          'Boa, pratico exercícios físicos regularmente',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),


                  Container(
                    margin: EdgeInsets.all(16),
                    color: Colors.purple.shade200,
                    child: Center(
                      child: TextButton(
                        onPressed: () { },
                        child: Text(
                          'Regular, às vezes pratico exercícios físicos',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),


                  Container(
                    margin: EdgeInsets.all(16),
                    color: Colors.purple.shade200,
                    child: Center(
                      child: TextButton(
                        onPressed: () { },
                        child: Text(
                          'Ruim, raramente pratico exercícios físicos',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),


                  Container(
                    margin: EdgeInsets.all(16),
                    color: Colors.purple.shade200,
                    child: Center(
                      child: TextButton(
                        onPressed: () { },
                        child: Text(
                          'Não pratico exercícios físicos',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
