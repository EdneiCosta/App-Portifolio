import 'package:flutter/material.dart';
import 'package:portifolio/pages/perfil.dart';

import '../Util/colors_Uteis.dart';
import 'home.dart';

class Projeto extends StatelessWidget {
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
        title:const  Text('Projetos',
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
                  child:  Text('Calculadora',
                    style: TextStyle(fontSize: 18),
                  ),
                  color: Colors.blueGrey,
                  width: 100,
                  height: 100,
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
                  child: Text('Jogo da Memoria',
                    style: TextStyle(fontSize: 20),
                  ),
                  color: Colors.blueGrey,
                  width: 100,
                  height: 100,
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
                  child: Text('Cadastro de Alunos/Professores',
                    style: TextStyle(fontSize: 15),
                  ),
                  color: Colors.blueGrey,
                  width: 100,
                  height: 100,
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
                  child: Text('Nome',
                    style: TextStyle(fontSize: 20),
                  ),
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
          if (_selectedIndex == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Home()),
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
