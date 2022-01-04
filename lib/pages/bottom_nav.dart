import 'package:flutter/material.dart';
import 'package:qiita/pages/feed_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);
  @override
  _BottomNavState createState() => _BottomNavState();
}


class _BottomNavState extends State<BottomNav> {

  int _currentIndex = 0;
  final _pageWidgets = [
    FeedPage(),
    Center(child: Text("albam")),
    Center(child: Text("chat")),
    Center(child: Text("extra")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageWidgets.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.format_list_bulleted_outlined),
            label: 'フィード',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.label_outline),
            label: 'タグ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'マイページ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: '設定',
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: const Color(0xFF74C13A),
        unselectedItemColor: const Color(0xFF828282),
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  void _onItemTapped(int index) => setState(() => _currentIndex = index );
}
