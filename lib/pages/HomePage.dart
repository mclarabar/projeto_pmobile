import 'package:flutter/material.dart';
import 'package:projeto_tela03/db/db_helper.dart';
import 'package:projeto_tela03/db/propriedades_dao.dart';
import 'package:projeto_tela03/domain/propriedades.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<Propriedade>> futurePropriedades;

  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    futurePropriedades = PropriedadesDao().listarPropriedades();
    // List<Propriedade> lista = await PropriedadesDao().listarPropriedades();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: FutureBuilder<List<Propriedade>>(
        future: futurePropriedades,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List<Propriedade> listaPropriedades = snapshot.requireData;
            return buildListView(listaPropriedades);
          }

          return Center(
            child: CircularProgressIndicator(color: Color(0xFFFFFFFF)),
          );
        },
      ),
    );
  }

  buildListView(listaPropriedades) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFC49CE8),
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          title: Text(
            'INFORMAÇÕES SOBRE O CÂNCER',
            style: TextStyle(color: Colors.white, fontSize: 18),
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
              child: Container(height: 45, color: Colors.indigo[900]),
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
                        onPressed: () {},
                        child: Text(
                          '<Voltar',
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
                      MediaQuery.of(context).size.width,
                      80.00,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: ListView(
            children: [
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    buildContainer(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjsAt04QBFN0JfUZZOA-hooxvCfKaCUJ17pw&s',
                      'Mapas Mentais',
                    ),
                    buildContainer(
                      'https://gestorconcursos.com.br/wp-content/uploads/2020/10/resumo.png',
                      'Resumos',
                    ),

                    buildContainer(
                      'https://m.media-amazon.com/images/I/715eP7f8lOL.jpg',
                      'Flashcards',
                    ),

                    buildContainer(
                      'https://blog.even3.com.br/wp-content/uploads/2021/09/imagemdestaque_artigoscientificos.png',
                      'Artigos',
                    ),

                    buildContainer(
                      'https://cdn-icons-png.flaticon.com/512/235/235861.png',
                      'Mapa',
                    ),
                  ],
                ),
              ),

              Flexible(
                child: Container(
                  height: 480,
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(20),
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
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          Text(
                            'O cigarro prejudica os pulmões, o coração e aumenta o risco de várias doenças.',
                            maxLines: 100,
                            style: TextStyle(fontSize: 18),
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
                                style: TextStyle(fontSize: 17),
                              ),
                            ],
                          ),
                          Text(
                            'A qualidade do ar influencia diretamente sua saúde respiratória.',
                            maxLines: 100,
                            style: TextStyle(fontSize: 18),
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
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          Text(
                            'Prefira alimentos naturais, com menos gordura, sal e açúcar.',
                            maxLines: 100,
                            style: TextStyle(fontSize: 18),
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
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          Text(
                            'Exercitar-se regularmente melhora o humor, a disposição e previne doenças.',
                            maxLines: 100,
                            style: TextStyle(fontSize: 18),
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
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          Text(
                            'O acompanhamento profissional ajuda na prevenção e no diagnóstico precoce.',
                            maxLines: 100,
                            style: TextStyle(fontSize: 18),
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

  buildContainer(String url, String text) {
    return Container(
      width: 140,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Center(
            child: CircleAvatar(backgroundImage: NetworkImage(url), radius: 45),
          ),
          Positioned(
            width: 150,
            bottom: 0,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
