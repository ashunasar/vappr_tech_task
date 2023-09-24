// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_downward),
        actions: [Icon(Icons.favorite_outline_outlined), SizedBox(width: 10)],
      ),
      body: Container(decoration: BoxDecoration()),
    );
  }
}
