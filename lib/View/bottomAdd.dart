import 'package:doan/View/category.dart';
import 'package:doan/View/overview.dart';
import 'package:doan/main.dart';
import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class bottomAdd extends StatefulWidget {
  const bottomAdd({super.key});

  @override
  State<bottomAdd> createState() => _bottomAddState();
}

class _bottomAddState extends State<bottomAdd> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
                title: Text('Add'),
                leading: IconButton(
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => category()));
                     
                    },
                    icon: Icon(Icons.settings)),
                bottom: TabBar(tabs: [
                  Tab(text: 'Revenue'),
                  Tab(text: 'Expaditure'),
                ])),
            body: TabBarView(children: [
              ListView.builder(
                  itemCount: listcategory.length,
                  itemBuilder: (context, index) {
                    final item = listcategory[index];
                    return Container(
                      child: CategoryLine(item.icon, item.name),
                    );
                  }),
              ListView.builder(
                  itemCount: listcategory.length,
                  itemBuilder: (context, index) {
                    final item = listcategory[index];
                    return Container(
                      child: CategoryLine(item.icon, item.name),
                    );
                  }),
            ])));
  }
}

Widget CategoryLine(Icon icon, String name) {
  return Row(
    children: [
      Container(
        padding: EdgeInsets.all(15),
        child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(50)),
            child: icon),
      ),
      Text(name),
    ],
  );
}

class categoryL {
  Icon icon;
  String name;
  categoryL(this.icon, this.name);
}

List<categoryL> listcategory = [
  categoryL(
      Icon(
        MdiIcons.lipstick,
        color: Colors.white,
      ),
      'a'),
  categoryL(
      Icon(
        MdiIcons.lipstick,
        color: Colors.white,
      ),
      'a'),
];
