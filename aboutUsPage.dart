import 'package:flutter/material.dart';

class AboutUsPage extends StatefulWidget {
  const AboutUsPage({super.key});

  @override
  State<AboutUsPage> createState() => _AboutUsPageState();
}

class _AboutUsPageState extends State<AboutUsPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo[900],
          title: Text(
            'CONHECENDO OS CRIADORES',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.account_circle_rounded),
                color: Colors.white),
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
                          backgroundImage:
                              AssetImage('assets/images/Ezequiel.png'),
                          radius: 80,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          color: Colors.white,
                          child: Text(
                            'José Ezequiel',
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
                          backgroundImage: AssetImage('assets/images/Lara.png'),
                          radius: 80,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          color: Colors.white,
                          child: Text(
                            'Lara Ivine',
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
                          backgroundImage:
                              AssetImage('assets/images/Clara.png'),
                          radius: 80,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          color: Colors.white,
                          child: Text(
                            'Maria Clara',
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
                          backgroundImage:
                              AssetImage('assets/images/Karla.png'),
                          radius: 80,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          margin: EdgeInsets.only(bottom: 8),
                          color: Colors.white,
                          child: Text(
                            'Maria Karla',
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
                  margin: EdgeInsets.all(16),
                  color: Colors.white,
                  child: ListView(
                    shrinkWrap: true,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          labelText: 'Digite seu texto aqui',
                        ),
                        maxLines: 1000,
                      )
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
