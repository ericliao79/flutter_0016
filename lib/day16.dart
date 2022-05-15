import 'package:flutter/material.dart';
import 'package:flutter_0016/pages/business.dart';
import 'package:flutter_0016/pages/home.dart';
import 'package:flutter_0016/pages/school.dart';
import 'package:flutter_0016/pages/settings.dart';

class Day16 extends StatefulWidget {
  Day16({super.key, required this.title});

  final String title;

  // //list of widgets to call ontap
  final List<Widget> screens = [
    new Home(),
    new Business(),
    new School(),
    new Settings()
  ];

  @override
  State<Day16> createState() => _Day16State();
}

class _Day16State extends State<Day16> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // PageView: 帶過場效果的頁面切換
      // IndexedStack: 不帶過場動畫
      body: IndexedStack(
        index: _currentPage,
        children: widget.screens,
      ),
      // ========
      // BottomNavigationBar 底部導覽列
      // 可搭配 PageView, IndexedStack 使用, 做到分頁效果
      // ========
      bottomNavigationBar: BottomNavigationBar(
        // 預設顯示的頁面
        currentIndex: _currentPage,
        // Action
        onTap: (int index) {
          setState(() {
            _currentPage = index;
          });
        },
        // BottomNavigationBarType.fixed
        // 1. tab 固定不變
        // 2. 顏色 由 ThemeData.canvasColor 決定
        // BottomNavigationBarType.shifting
        // 1. tab 是會變動的
        // 2. 顏色 由每個 item 決定
        type: BottomNavigationBarType.shifting,
        // 底部導覽列的按鈕
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
              backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
              backgroundColor: Colors.green,
            // 當 被點擊時的 icon
            activeIcon: Icon(Icons.earbuds),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
              backgroundColor: Colors.amber
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'School',
              backgroundColor: Colors.deepPurpleAccent
          ),
        ],
      ),
    );
  }
}
