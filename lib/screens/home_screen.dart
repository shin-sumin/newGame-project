import 'package:flutter/material.dart';
import 'routine_setting_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _goToRoutineSetting(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RoutineSettingScreen()),
    );
  }

  void _openNotifications(BuildContext context) {
    // 알림 화면으로 이동 예정
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('알림 화면은 아직 구현되지 않았습니다.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DIMO 홈"),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () => _openNotifications(context),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 캐릭터 영역 (더미 이미지 또는 텍스트)
          Center(
            child: Column(
              children: [
                Icon(Icons.emoji_emotions, size: 100, color: Colors.teal),
                SizedBox(height: 8),
                Text("루나가 기분 좋아 보여요!", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          SizedBox(height: 24),
          Text("오늘의 루틴 요약", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          SizedBox(height: 12),
          Column(
            children: [
              ListTile(
                leading: Icon(Icons.check_circle_outline),
                title: Text("물 마시기"),
                trailing: Icon(Icons.check, color: Colors.green),
              ),
              ListTile(
                leading: Icon(Icons.check_circle_outline),
                title: Text("책 읽기"),
                trailing: Icon(Icons.close, color: Colors.red),
              ),
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _goToRoutineSetting(context),
        child: Icon(Icons.settings),
        tooltip: "루틴 설정",
      ),
    );
  }
}
