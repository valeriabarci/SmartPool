import 'package:flutter/material.dart';

const _tituloAppBar = 'NOTIFICAÇÃO';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Dashboard',
      style: optionStyle,
    ),
    Text(
      'Index 1: Notifications',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 32, 16, 48),
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(_tituloAppBar, style: TextStyle(color: Color.fromARGB(255, 100, 90, 169),),
        ),
        backgroundColor: Color.fromARGB(255, 76, 35, 112),
        // The title text which will be shown on the action bar
      ),
      body: Center(
      child: _widgetOptions.elementAt(_selectedIndex),),
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 76, 35, 112),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.assessment_outlined, size: 45),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications, size: 45),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromARGB(255, 155, 143, 239),
        onTap: _onItemTapped,
      ),
    );
  }
}