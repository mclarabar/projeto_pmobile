import 'package:flutter/material.dart';
import 'package:projeto_tela03/db/db_helper.dart';
import 'package:projeto_tela03/db/propriedades_dao.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await PropriedadesDao().listarPropriedades();
  }


  @override
  Widget build(BuildContext context) {



    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.deepPurpleAccent[100],
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          title: Text(
            'INFORMAÇÕES SOBRE O CÂNCER',
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
        bottomNavigationBar: Container(
          height: 90,
          color: Colors.indigo[900],
          child: Row(
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  '< Voltar',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Column(
            children: [
              GridView(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 1,
                  crossAxisSpacing: 16,
                  childAspectRatio: 1,
                ),

                children: [
                  Stack(
                    children: [
                      Center(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjsAt04QBFN0JfUZZOA-hooxvCfKaCUJ17pw&s',
                          ),
                          radius: 60,
                        ),
                      ),

                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          child: Text(
                            'Mapas Mentais',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Center(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://gestorconcursos.com.br/wp-content/uploads/2020/10/resumo.png',
                          ),
                          radius: 60,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          child: Text(
                            'Resumos',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Center(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://m.media-amazon.com/images/I/715eP7f8lOL.jpg',
                          ),
                          radius: 60,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          child: Text(
                            'Resumos',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Center(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://blog.even3.com.br/wp-content/uploads/2021/09/imagemdestaque_artigoscientificos.png',
                          ),
                          radius: 60,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          child: Text(
                            'Artigos',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Flexible(
                child: Container(
                  height: 190,
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.all(16),
                  color: Colors.white,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Text(
                        'HÁBITOS PREVENTIVOS: ',
                        maxLines: 100,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            spacing: 9,
                            children: [
                              Icon(Icons.smoke_free),
                              Text(
                                'NÃO FUME',
                                maxLines: 100,
                                style: TextStyle(
                                  fontSize: 20
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'O cigarro prejudica os pulmões, o coração e aumenta o risco de várias doenças.',
                            maxLines: 100,
                            style: TextStyle(
                                fontSize: 18
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            spacing: 8,
                            children: [
                              Icon(Icons.masks),
                              Text(
                                'EVITE EXPOSIÇÃO A POLUENTES',
                                maxLines: 100,
                                style: TextStyle(
                                    fontSize: 19
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'A qualidade do ar influencia diretamente sua saúde respiratória.',
                            maxLines: 100,
                            style: TextStyle(
                                fontSize: 18
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            spacing: 8,
                            children: [
                              Icon(Icons.no_food_outlined),
                              Text(
                                'ADOTE UMA DIETA SAUDÁVEL',
                                maxLines: 100,
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Prefira alimentos naturais, com menos gordura, sal e açúcar.',
                            maxLines: 100,
                            style: TextStyle(
                                fontSize: 18
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            spacing: 8,
                            children: [
                              Icon(Icons.sports_handball),
                              Text(
                                'PRATIQUE ATIVIDADE FÍSICA',
                                maxLines: 100,
                                style: TextStyle(
                                    fontSize: 20
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Exercitar-se regularmente melhora o humor, a disposição e previne doenças.',
                            maxLines: 100,
                            style: TextStyle(
                                fontSize: 18
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            spacing: 8,
                            children: [
                              Icon(Icons.medical_services_rounded),
                              Text(
                                'FAÇA CONSULTAS MÉDICAS',
                                maxLines: 100,
                                style: TextStyle(
                                    fontSize: 19
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'O acompanhamento profissional ajuda na prevenção e no diagnóstico precoce.',
                            maxLines: 100,
                            style: TextStyle(
                                fontSize: 18
                            ),
                          ),
                        ],
                      ),

                    ],
                  ),
                ),
                ),
              ],

          ),
        ),
      ),
    );
  }
}