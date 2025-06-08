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
            'Início',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.account_circle, color: Colors.white),
              onPressed: () {

              },
            ),
          ],
        ),
        //  appBar: AppBar(backgroundColor: Colors.indigo[900]),

        body: ListView(
          children: [
            GridView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 4,
                crossAxisSpacing: 10,
                childAspectRatio: 0.8,
              ),
              children: [
                Align(
                  child: Container(
                    alignment: Alignment.center, //PARA CENTRALIZAR O CONTEUDO
                    color: Colors.white,
                    width: 150, // PARA AUMENTAR A LARGURA (ACONSELHO COLOCAR TODAS DO MESMO TAMANHO)
                    height: 60, // PARA AUMENTAR O TAMANHO (ACONSELHO COLOCAR TODAS DO MESMO TAMANHO)
                    child: Text(
                      'QUIZ DA ROTINA',
                      style: TextStyle(
                        fontSize: 16, // PARA DIMINUIR A FONTE E FICAR PARECIDA COM A FOTO
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                Align(
                  child: Container(
                    alignment: Alignment.center,

                    width: 150,
                    height: 60,
                    color: Colors.white,
                    child: Text(
                      'INFORMAÇÕES',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 45),
                    color: Colors.white,
                    child: Text(
                      'COLETÂNEA DE DADOS',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 45),
                    color: Colors.white,
                    child: Text(
                      'SOBRE NÓS',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.only(bottom: 35),
                    color: Colors.white,
                    child: Text(
                      'Últimas notícias:',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),

      ),
    );
  }
}