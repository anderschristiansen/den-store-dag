import 'package:den_store_dag/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WrapperScreen extends StatefulWidget {
  @override
  _WrapperScreenState createState() => _WrapperScreenState();
}

class _WrapperScreenState extends State<WrapperScreen> {
  int _currentIndex = 0;
  List<Widget> _children = [
    Container(child: EventsScreen()),
    Container(child: GiftsScreen()),
    Container(child: EventsScreen()),
    // Container(child: ProfileScreen()),
  ];

  List<String> _appBarTitle = [
    "Hjem",
    "Ønsker",
    "Billeder",
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        bottom: false,
        top: false,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.deepPurple,
            title: Text(_appBarTitle[_currentIndex]),
            actions: [
              IconButton(
                icon:
                    Icon(FontAwesomeIcons.userCircle, color: Colors.pink[200]),
                onPressed: () => 
                Navigator.pushNamed(context, '/profile'),
              )
            ],
          ),
          body: Center(
            child: _children[_currentIndex],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: _currentIndex,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.home, size: 20),
                  title: Text('Hjem')),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.gifts, size: 20),
                  title: Text('Ønsker')),
              BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.userCircle, size: 20),
                  title: Text('Profile')),
            ].toList(),
            fixedColor: Colors.deepPurple[200],
            onTap: (int idx) {
              setState(() {
                _currentIndex = idx;
              });
            },
          ),
        ));
  }
}
