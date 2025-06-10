import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
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
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                  childAspectRatio: 0.9,
                ),

                children: [
                  Stack(
                    children: [
                      Center(
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjsAt04QBFN0JfUZZOA-hooxvCfKaCUJ17pw&s',
                          ),
                          radius: 80,
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
                          radius: 80,
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
                          radius: 80,
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
                          radius: 80,
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
                  height: 120,
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.all(16),
                  color: Colors.white,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      Text(
                        'Hábitos preventivos',
                        maxLines: 100,
                        style: TextStyle(
                            fontSize: 20),
                      )],
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
