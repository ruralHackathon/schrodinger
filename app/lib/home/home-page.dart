import 'package:flutter/material.dart';
import '../eventos/eventos-page.dart';
import '../servicios/servicios-page.dart';
import '../urgencias/urgencias-page.dart';
import '../visitas/visitas-page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  final _pages = [Eventos(), Visitas(), Servicios(), Urgencias()];

  void onTabTapped(int index) {
    if (mounted) {
      setState(() {
        _currentIndex = index;
      });
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
            body: _pages[_currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: _currentIndex,
              onTap: onTabTapped,
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.event), title: Text('Eventos')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.account_balance), title: Text('Visitas')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.hotel), title: Text('Servicios')),
                BottomNavigationBarItem(
                    icon: Icon(Icons.local_hospital), title: Text('Urgencias'))
              ],
            ),
          );
  }
}