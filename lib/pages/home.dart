import 'package:flutter/material.dart';
import 'package:portifolio/Util/colors_Uteis.dart';
import 'package:portifolio/pages/perfil.dart';
import 'package:portifolio/pages/projetos.dart';

class Home extends StatelessWidget {
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
        title: const Text(
          'Home',
          style: TextStyle(color: Utils.corLetraBranca),
        ),
      ),
      backgroundColor: Utils.corFundoPage,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/image/rioe.png', width: 350),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ednei Costa',
                style: TextStyle(fontSize: 40, color: Utils.corLetraPreta),
              ),
            ],
          ),
        ],
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
