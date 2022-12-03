// import 'dart:html';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:d_chart/d_chart.dart';

const _tituloAppBar = 'HOME';
// final stremChart = FirebaseFirestore.instance
//     .collection('PH')
//     .snapshots(includeMetadataChanges: true);

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
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
        title: Text(
          _tituloAppBar,
          style: TextStyle(
            color: Color.fromARGB(255, 100, 90, 169),
          ),
        ),
        backgroundColor: Color.fromARGB(255, 76, 35, 112),
        // The title text which will be shown on the action bar
      ),
      // body: ListView(
      //   padding: const EdgeInsets.all(16),
        // children: [
        //   StreamBuilder(
        //     stream: stremChart,
        //     builder: (context,AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
        //       List listChart = snapshot.data!.docs.map((e){
        //         return {
        //           'domain': e.data()['data'],
        //           'measure': e.data()['ph']
        //         };
        //       }).toList();
        //       return AspectRatio(
        //     aspectRatio: 16 / 9,
        //     child: DChartBar(
        //       data: [
        //         {
        //           'id': 'Bar',
        //           'data': listChart,
        //         },
        //       ],
        //       domainLabelPaddingToAxisLine: 16,
        //       axisLineTick: 2,
        //       axisLinePointTick: 2,
        //       axisLinePointWidth: 10,
        //       axisLineColor: Color.fromARGB(255, 99, 52, 139),
        //       measureLabelPaddingToAxisLine: 16,
        //       barColor: (barData, index, id) =>
        //           Color.fromARGB(255, 144, 82, 197),
        //       showBarValue: true,
        //     ),
        //   );
        //     },
        //   ),
          
        // ],
      // ),

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
