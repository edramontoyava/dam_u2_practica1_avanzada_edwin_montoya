import 'package:dam_u2_practica1_avanzada_edwin_montoya/pagina1.dart';
import 'package:dam_u2_practica1_avanzada_edwin_montoya/pagina2.dart';
import 'package:dam_u2_practica1_avanzada_edwin_montoya/pagina3.dart';
import 'package:flutter/material.dart';

class practica1_avanzada extends StatefulWidget {
  const practica1_avanzada({Key? key}) : super(key: key);

  @override
  State<practica1_avanzada> createState() => _practica1_avanzadaState();
}

class _practica1_avanzadaState extends State<practica1_avanzada> {
  int _indice=0;

  void _cambiarIndice(int inndice){
    setState(() {
      _indice=inndice;
    });
  }

  final List<Widget> _paginas=[
    pagina1(),
    pagina2(),
    paginna3()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Practica 1 avanzada"),centerTitle: true,),
      body: _paginas[_indice],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon:Icon(Icons.home_filled),label:"Pagina 1"),
          BottomNavigationBarItem(icon:Icon(Icons.home_filled),label:"Pagina 2"),
          BottomNavigationBarItem(icon:Icon(Icons.home_filled),label:"Pagina 3")
        ],
        currentIndex: _indice,
        showSelectedLabels: false,
        iconSize: 30,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white38,
        onTap: _cambiarIndice,
      ),
    );
  }
}
