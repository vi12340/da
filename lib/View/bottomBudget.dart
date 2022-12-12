import 'package:flutter/material.dart';

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
          actions: [Icon(Icons.exit_to_app)],
        ),
        body: Row(
          children: [
            TextField(
                decoration: InputDecoration(border: OutlineInputBorder())),
            ElevatedButton(onPressed: (() {}), child: Text('Save')),
          ],
        ));
  }
}
