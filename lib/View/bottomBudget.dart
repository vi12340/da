import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class bottomBudget extends StatefulWidget {
  const bottomBudget({super.key});

  @override
  State<bottomBudget> createState() => _bottomBudgetState();
}

class _bottomBudgetState extends State<bottomBudget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: (() {
                Navigator.pop(context);
              }),
              icon: Icon(Icons.close)),
        ),
        body: Row(
          children: [],
        ));
  }
}
