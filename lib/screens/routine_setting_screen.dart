import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class RoutineSettingScreen extends StatefulWidget {
  @override
  _RoutineSettingScreenState createState() => _RoutineSettingScreenState();
}

class _RoutineSettingScreenState extends State<RoutineSettingScreen> {
  Map<String, bool> routines = {
    "물 마시기": false,
    "책 읽기": false,
    "폰 끄기": false,
  };

  final TextEditingController _controller = TextEditingController();
  final String userId = FirebaseAuth.instance.currentUser!.uid; // 임시 사용자 ID

  @override
  void initState() {
    super.initState();
    _loadRoutines();
  }

  Future<void> _loadRoutines() async {
    final doc = await FirebaseFirestore.instance
        .collection("users")
        .doc(userId)
        .get();

    if (doc.exists && doc.data()!.containsKey("routines")) {
      final data = Map<String, dynamic>.from(doc.data()!["routines"]);
      setState(() {
        routines = data.map((key, value) => MapEntry(key, value as bool));
      });
    }
  }

  Future<void> _updateRoutine(String name, bool value) async {
    setState(() {
      routines[name] = value;
    });

    await FirebaseFirestore.instance
        .collection("users")
        .doc(userId)
        .set({"routines": routines}, SetOptions(merge: true));
  }

  void _addRoutine() {
    final newRoutine = _controller.text.trim();
    if (newRoutine.isNotEmpty && !routines.containsKey(newRoutine)) {
      _updateRoutine(newRoutine, false);
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("루틴 설정")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      labelText: "루틴 추가",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _addRoutine,
                  child: Text("추가"),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: routines.keys.map((routine) {
                return CheckboxListTile(
                  title: Text(routine),
                  value: routines[routine],
                  onChanged: (bool? value) {
                    if (value != null) {
                      _updateRoutine(routine, value);
                    }
                  },
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}