import 'package:app_volters/visu_watts.dart';
import 'package:flutter/material.dart';

import 'about_volters.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key : key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State <HomePage> {

  int paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  setPaginaAtual(pagina) {
    setState(() {
      paginaAtual = pagina;
    });
  }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        onPageChanged: setPaginaAtual,
        children: const [
        AboutVolters(),
        VisuWatts(),
      ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: paginaAtual,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'About'),
          BottomNavigationBarItem(icon: Icon(Icons.energy_savings_leaf), label: 'Overview'),
        ],
        onTap: (pagina) {
          pc.animateToPage(
            pagina,
            duration: const Duration(milliseconds: 400),
            curve: Curves.ease,
          );
        },
        // backgroundColor: Colors.grey[100],
      ),
    );
  }
}
