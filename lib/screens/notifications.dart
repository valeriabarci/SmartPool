import 'package:flutter/material.dart';

const _tituloAppBar = 'NOTIFICAÇÃO';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

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
      body: Container(),
    );
  }
}