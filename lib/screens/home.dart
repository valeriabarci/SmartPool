import 'package:flutter/material.dart';
import '../values/standard colors.dart';
import 'dashboard.dart';
import 'notifications.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int paginaAtual = 0;
  late PageController pc;

  @override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: pc,
        children: [
          Dashboard(),
          Notifications(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: CustomColors().getActivePrimaryColorAppBar(),
        selectedItemColor: CustomColors().getActiveSelectButtonColor(),
        currentIndex: paginaAtual,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment_outlined),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notificações',
          ),
        ],
        onTap: (index) {
          setState(
            () {
              paginaAtual = index;
              pc.animateToPage(index,
                  duration: Duration(milliseconds: 500), curve: Curves.ease);
            },
          );
        },
      ),
    );
  }
}
