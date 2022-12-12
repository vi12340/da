import 'dart:ui';

import 'package:flutter/material.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                Container(
                    height: 50,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(flex: 2, child: Text('Name')),
                        Expanded(
                          flex: 10,
                          child: TextField(
                            decoration:
                                InputDecoration(border: UnderlineInputBorder()),
                          ),
                        ),
                      ],
                    )),
              ],
            )));
  }
}
