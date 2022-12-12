import 'package:flutter/material.dart';
import 'package:doan/View/bottomAdd.dart';

class category extends StatefulWidget {
  const category({super.key});

  @override
  State<category> createState() => _categoryState();
}

class _categoryState extends State<category> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            itemCount: listcategory.length,
            itemBuilder: (context, index) {
              final item = listcategory[index];
              return Container(
                child: CategoryLine(item.icon, item.name),
              );
            }));
  }
}
