import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'routine_setting_screen.dart';

class MainAppWithBottomNav extends StatefulWidget {
  @override
  _MainAppWithBottomNavState createState() => _MainAppWithBottomNavState();
}

class _MainAppWithBottomNavState extends State<MainAppWithBottomNav> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),                // 홈
    PlaceholderScreen("스크랩북"), // 나중에 ScrapbookScreen으로 대체
    PlaceholderScreen("AI 루나 코치"), // 나중에 LunaCoachScreen으로 대체
    RoutineSettingScreen(),      // 루틴 설정
    PlaceholderScreen("알림함"), // 나중에 NotificationScreen으로 대체
  ];

  final List<BottomNavigationBarItem> _navItems = [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
    BottomNavigationBarItem(icon: Icon(Icons.photo_album), label: '스크랩북'),
    BottomNavigationBarItem(icon: Icon(Icons.chat), label: '루나 코치'),
    BottomNavigationBarItem(icon: Icon(Icons.settings), label: '루틴 설정'),
    BottomNavigationBarItem(icon: Icon(Icons.notifications), label: '알림'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _navItems,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: _onItemTapped,
      ),
    );
  }
}

class PlaceholderScreen extends StatelessWidget {
  final String title;
  const PlaceholderScreen(this.title);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("$title 화면 (아직 구현되지 않음)", style: TextStyle(fontSize: 18)),
    );
  }
}
