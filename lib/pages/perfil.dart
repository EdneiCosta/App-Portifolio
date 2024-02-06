import 'package:flutter/material.dart';
import 'package:portifolio/pages/projetos.dart';

import '../Util/colors_Uteis.dart';
import 'home.dart';


class Perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

  class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
  }

  class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Utils.corAppBar,
        title: Text('Perfil',
          style: TextStyle(color: Utils.corLetraBranca),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Nome',
                    style: TextStyle(fontSize: 20),
                  ),
                  color: Colors.blueGrey,
                  width: 100,
                  height: 50,
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Sobre Mim',
                    style: TextStyle(fontSize: 20),
                  ),
                  color: Colors.blueGrey,
                  width: 100,
                  height: 100,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                      'hobbies ',
                    style: TextStyle(fontSize: 20),
                  ),
                  color: Colors.blueGrey,
                  width: 100,
                  height: 100,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                      'Curriculo',
                    style: TextStyle(fontSize: 20),
                  ),
                  alignment: Alignment.center,
                  color: Colors.blueGrey,
                  width: 100,
                  height: 100,
                )
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Utils.corAppBar,
        unselectedItemColor: Utils.corLetraBranca,
        selectedItemColor: Utils.corLetraBranca,
        unselectedLabelStyle: const TextStyle(fontSize: 18.0),
        selectedLabelStyle: const TextStyle(fontSize: 18.0),
        onTap: (index) {
          // Atualiza o estado para a página selecionada
          setState(() {
            _selectedIndex = index;
          });
          if (_selectedIndex == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Projeto()),
            );
          }
          // Abre a nova página quando o item "Perfil" for clicado
          if (_selectedIndex == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Perfil()),
            );
          }
        },
        items:[
          BottomNavigationBarItem(
            icon: Icon( Icons.home),
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon: Icon( Icons.description),
            label: 'Projetos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
