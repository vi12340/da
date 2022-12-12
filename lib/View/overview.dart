import 'dart:ffi';
import 'dart:ui';

import 'package:doan/View/add.dart';
import 'package:doan/View/bottomAdd.dart';
import 'package:doan/View/bottomBudget.dart';
import 'package:doan/View/category.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class overview extends StatefulWidget {
  const overview({super.key});

  @override
  State<overview> createState() => _overviewState();
}

class _overviewState extends State<overview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: appBar(),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(children: [
          Column(children: [
            GestureDetector(
              onTap: (() {
                setState(() {
                  showBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 100,
                          child: bottomBudget(),
                        );
                      });
                });
              }),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: Text('Đặt ngân sách',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold))),
                  Text('00')
                ],
              ),
            ),
            Container(
              height: 500,
              child: ListView.builder(
                  itemCount: Lists.length,
                  itemBuilder: (context, index) {
                    final item = Lists[index];
                    return Container(
                      child: listExpenditures(item.icon, item.name, item.price),
                    );
                  }),
            ),
          ]),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            showModalBottomSheet(
                context: context,
                builder: (BuildContext conext) {
                  return Container(
                    height: 500,
                    child: bottomAdd(),
                  );
                });
          });
        },
        child: Icon(Icons.add),
        mini: true,
      ),
    );
  }
}

Widget appBar() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        '100000000 ',
        style: TextStyle(fontSize: 25),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 4),
        child: Text('Chi tiêu: -1000', style: TextStyle(fontSize: 15)),
      ),
      Text('Thu nhập: 100000', style: TextStyle(fontSize: 15)),
    ],
  );
}

Widget listExpenditures(Icon icon, String name, String price) {
  return Container(
    padding: EdgeInsets.only(top: 15),
    child: Row(children: [
      Container(
        padding: EdgeInsets.only(right: 10),
        child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(50)),
            child: icon),
      ),
      Expanded(child: Text(name)),
      Text(price)
    ]),
  );
}

class list {
  Icon icon;
  String name;
  String price;

  list(this.icon, this.name, this.price);
}

List<list> Lists = [
  list(
      Icon(
        MdiIcons.lipstick,
        color: Colors.white,
      ),
      'a',
      '0'),
  list(Icon(Icons.shopping_bag, color: Colors.white), 'a', '0'),
  list(Icon(Icons.add, color: Colors.white), 'a', '0'),
];
