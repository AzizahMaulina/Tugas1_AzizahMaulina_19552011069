import 'package:azizah/screens/dashboard_screen.dart';
import 'package:azizah/screens/date_screen.dart';
import 'package:azizah/screens/time_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Nav extends StatefulWidget {
  const Nav({ Key? key }) : super(key: key);

  @override
  _NavState createState() => _NavState();
}

class _NavState extends State<Nav> {
  int _selectedIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    DashboardScreen(),
    Date(),
    Time()
  ];

  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
          icon: Icon(Icons.home), 
          title: Text('Dashboard'),
        ),
          BottomNavigationBarItem(
          icon: Icon(Icons.date_range), 
          title: Text('Date'),
        ),
          BottomNavigationBarItem(
          icon: Icon(Icons.timer),
          title: Text('Time'),
        ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        ),
    );
  }
}