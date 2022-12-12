import 'package:doan/View/add.dart';
import 'package:doan/View/bottomAdd.dart';
import 'package:doan/View/category.dart';
import 'package:doan/View/chart.dart';
import 'package:doan/View/overview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currenIndex = 0;
  final tabs = [overview(), category(), chart()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: tabs[_currenIndex],
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Colors.blue,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'List',
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.pie_chart), label: 'Chart'),
          ],
          currentIndex: _currenIndex,
          onTap: (index) {
            setState(() {
              _currenIndex = index;
            });
          },
        ),
      ),
    );
  }
}

Widget appBar() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Tổng: ',
        style: TextStyle(fontSize: 25),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Text('Chi tiêu: ', style: TextStyle(fontSize: 15)),
      ),
      Text('Thu nhập: ', style: TextStyle(fontSize: 15)),
    ],
  );
}
