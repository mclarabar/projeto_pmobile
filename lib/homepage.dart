import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
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

        body: Container(
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
                      'QUESTÃO 1',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(16),
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
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
                        'Opção 1',
                        style: TextStyle(color: Colors.white, fontSize: 25),
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
                        'Opção 2',
                        style: TextStyle(color: Colors.white, fontSize: 25),
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
                        'Opção 3',
                        style: TextStyle(color: Colors.white, fontSize: 25),
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
                        'Opção 4',
                        style: TextStyle(color: Colors.white, fontSize: 25),
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