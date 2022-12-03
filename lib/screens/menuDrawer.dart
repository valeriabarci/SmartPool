import 'package:flutter/material.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({Key? key}) : super(key: key);

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      drawer: Drawer(
        // width: 400,
        backgroundColor: Color.fromARGB(255, 28, 11, 43),
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 28, 11, 43),
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
            Divider(color: Colors.white),
            Padding(padding: const EdgeInsets.only(bottom: 5.0)),
            ListTile(
              title: Text('PERFIL', textAlign: TextAlign.center, style: TextStyle(color: Color.fromARGB(255, 129, 119, 201), fontSize: 30)),
            ),
            Padding(padding: const EdgeInsets.only(bottom: 5.0)),
            Divider(color: Colors.white),
            Padding(padding: const EdgeInsets.only(bottom: 5.0)),
            ListTile(
              title: Text('SOBRE NÓS', textAlign: TextAlign.center, style: TextStyle(color: Color.fromARGB(255, 129, 119, 201), fontSize: 30)),
            ),
            Padding(padding: const EdgeInsets.only(bottom: 5.0)),
            Divider(color: Colors.white),
            Padding(padding: const EdgeInsets.only(bottom: 5.0)),
            ListTile(
              title: Text('CONFIGURAÇÕES', textAlign: TextAlign.center, style: TextStyle(color: Color.fromARGB(255, 129, 119, 201), fontSize: 30)),
            ),
            Padding(padding: const EdgeInsets.only(bottom: 5.0)),
            Divider(color: Colors.white),
            Padding(padding: const EdgeInsets.only(bottom: 5.0)),
            ListTile(
              title: Text('SAIR', textAlign: TextAlign.center, style: TextStyle(color: Color.fromARGB(255, 129, 119, 201), fontSize: 30)),
            ),
            Padding(padding: const EdgeInsets.only(bottom: 5.0)),
            Divider(color: Colors.white),
          ],
        ),
      ),
      body: Center(),
    );
    
  }
}
